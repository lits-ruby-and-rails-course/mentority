class CreateLearnings < ActiveRecord::Migration
  def change
    create_table :learnings do |t|
	    t.integer :student_id
	    t.references :course, index: true, foreign_key: true
	    t.text :status
      t.timestamps null: false
    end
  end
end
