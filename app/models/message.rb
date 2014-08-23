class Message < ActiveRecord::Base
	attr_accessible :netid, :course_id, :content
	belongs_to :chat

end

