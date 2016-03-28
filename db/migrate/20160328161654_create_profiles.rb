class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.attachment :avatar
      t.date :birthdate
      t.string :gender
      t.integer :age
      t.text :bio
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
