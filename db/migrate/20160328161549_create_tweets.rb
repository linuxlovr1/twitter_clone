class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :body, null: false
      t.attachment :picture
      t.boolean :public, default: true
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
