require 'rails_helper'

RSpec.describe "tweets/new.html.erb", type: :view do
  before(:each) do 
    assign(:tweet, Tweet.new(
      :body => ""
    ))
end

it "renders new tweet form" do 
  assert_select "form[action=?][method=?]", tweets_path, "post" do 
  end
end