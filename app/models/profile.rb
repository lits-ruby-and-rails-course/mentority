# == Schema Information
#
# Table name: profiles
#
#  id                  :integer          not null, primary key
#  user_id             :integer
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  birthday            :date
#  introduction        :text
#  user_email          :string
#  user_phone          :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Profile < ActiveRecord::Base
	belongs_to :user, required: true
	validates :user_id, uniqueness: true
	validates :user_phone, presence: true
end
