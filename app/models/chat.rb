class Chat < ActiveRecord::Base
  attr_accessible :course_id, :coursename

  has_many :messages, through: :courses
end
