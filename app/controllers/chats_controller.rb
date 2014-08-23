class ChatsController < ApplicationController
	def index
		@chats = Chat.all
		respond_to do |format|
			format.html { render :json => @chats.to_json }
			format.json { render :json => @chats.to_json }
		end
	end

	def new_messages
		current_user = User.where(netid: session[:cas_user]).last
		current_chat = Chat.where(course_id: params[:course_id]).last
		if current_chat
			last_message = current_chat.messages.where(netid: current_user.netid).last
			if last_message
				new_messages = current_chat.messages.where(created_at: last_message.created_at..Time.now)
				if new_messages
					new_messages = new_messages[1..new_messages.count-1]
				end
				respond_to do |format|
					format.html { render :json => new_messages.to_json }
					format.json { render :json => new_messages.to_json }
				end
			else
				render :json => { hello: 'hello'}
			end
		else
			render :json => {}
		end
	end
end
