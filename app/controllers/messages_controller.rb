class MessagesController < ApplicationController

  skip_before_action :getMe, only: [:index]

  def skip_login?
    true
  end

  def create
    @msg = Message.new(message_params)
    @msg.update_attributes(updated_at: Time.now, created_at: Time.now)
    #course_id: course_id, content: content,
                       #netid: netid, created_at: Time.now,
                       #updated_at: Time.now)
    respond_to do |format|
      if @msg.save
        format.html { render json: @msg.to_json }
        format.json { render json: @msg.to_json }
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:course_id, :content, :netid)
  end

end
