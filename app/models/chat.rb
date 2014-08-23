class Chat < ActiveRecord::Base
  
  has_many :messages, primary_key: 'course_id', foreign_key: 'course_id'
end
