class Learning < ActiveRecord::Base
	belongs_to :user
	belongs_to :course
	enum status: [:active, :pending, :progress, :done, :archived]
end
