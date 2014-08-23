class Chat < ActiveRecord::Base
  attr_accessible :course_id, :coursename

  has_many :messages, primary_key: 'course_id', foreign_key: 'course_id'
end
