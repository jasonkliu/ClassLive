class Message < ActiveRecord::Base
	attr_accessible :netid, :course_id, :content
	belongs_to :chat, primary_key: 'course_id', foreign_key: 'course_id'

end

