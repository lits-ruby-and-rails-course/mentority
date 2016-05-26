class CreateLearnings < ActiveRecord::Migration
  def change
    create_table :learnings do |t|
    	t.belongs_to :user, index: true, foreign_key: true, unique: true, null: false
	   	t.belongs_to :course, index: true, foreign_key: true, unique: true, null: false
	    t.integer :status, null: false
      t.timestamps null: false
    end
  end
end
