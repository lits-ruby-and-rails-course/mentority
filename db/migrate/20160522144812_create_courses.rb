class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text :description
      t.integer :user_id, index: true
      t.timestamps null: false
      t.timestamps null: false
    end
  end
end
