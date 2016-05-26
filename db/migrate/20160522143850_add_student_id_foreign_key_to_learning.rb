class AddStudentIdForeignKeyToLearning < ActiveRecord::Migration
  def change
  	add_foreign_key :learnings, :users, column: :student_id, index: true, primary_key: "student"
  end
end
