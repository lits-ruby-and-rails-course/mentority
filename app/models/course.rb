class Course < ActiveRecord::Base
    belongs_to :mentor, class_name: 'User'
end
