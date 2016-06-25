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
	belongs_to :user
	belongs_to :course
	enum status: [:active, :pending, :progress, :done, :archived]
end
