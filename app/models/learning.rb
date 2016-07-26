# == Schema Information
#
# Table name: learnings
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  course_id  :integer
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Learning < ActiveRecord::Base
  belongs_to :student, class_name: 'User', foreign_key: "user_id", required: true
  belongs_to :course, required: true

  enum status: [:active, :pending, :progress, :done, :archived]

  validates_uniqueness_of :user_id, scope: :course_id 
end
