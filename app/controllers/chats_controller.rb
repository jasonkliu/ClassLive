class ChatsController < ApplicationController
	def index
		@chats = Chat.all
		respond_to do |format|
			format.json { render :json => @chats.to_json }
		end
	end
end
