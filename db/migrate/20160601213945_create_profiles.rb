class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|

      t.integer :user_id, index: true, unique: true, foreign_key: true
      t.attachment  :avatar
      t.date    :birthday
      t.text    :personal_info
      t.string  :user_email
      t.string  :user_phone
      t.timestamps null: false
    end
  end
end
