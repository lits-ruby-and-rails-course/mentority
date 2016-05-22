class AddStudentIdForeignKeyToLearning < ActiveRecord::Migration
  def change
  	add_foreign_key :learnings, :users, column: :student_id, index: true
  end
end
