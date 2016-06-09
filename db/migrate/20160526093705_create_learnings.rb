class CreateLearnings < ActiveRecord::Migration
  def change
    create_table :learnings do |t|
    	t.belongs_to :user, index: true
		t.belongs_to :course, index: true
		t.integer :status
      t.timestamps null: false
    end
  end
end
