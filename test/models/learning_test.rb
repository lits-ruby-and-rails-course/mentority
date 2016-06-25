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

require 'test_helper'

class LearningTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
