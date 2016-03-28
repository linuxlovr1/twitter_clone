require 'populator'
namespace :populate do
  desc "Populate users and tweets"
  task tweets: :environment do
    User.destroy_all
    # Populate Users
    User.populate(10) do |user|
      user.first_name = Faker::Name.first_name
      user.last_name = Faker::Name.last_name
      user.email = Faker::Internet.email
      user.encrypted_password = 'password'
      user.sign_in_count = 0
      
      # Populate User Tweets
      Tweet.populate(10) do |tweet|
        tweet.body = Faker::Hipster.sentence
        tweet.user_id = user.id
        tweet.created_at = Faker::Date.between(2.years.ago, Date.today)
      end
    end
    puts "Users and Tweets Populated"
  end
end