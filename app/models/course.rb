# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  title       :text
#  description :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Course < ActiveRecord::Base
    belongs_to :mentor, class_name: 'User'
end
