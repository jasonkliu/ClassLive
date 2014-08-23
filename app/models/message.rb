class Message < ActiveRecord::Base
	belongs_to :chat, primary_key: 'course_id', foreign_key: 'course_id'
end

