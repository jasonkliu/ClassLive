class ChatsController < ApplicationController
	def index
		@chats = Chat.all
		respond_to do |format|
			format.html { render :json => @chats.to_json }
			format.json { render :json => @chats.to_json }
		end
	end
end
