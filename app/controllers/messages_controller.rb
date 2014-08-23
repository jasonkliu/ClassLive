class MessagesController < ApplicationController
  def create(course_id, content)
    @msg = Message.new(course_id: course_id, content: content,
                       netid: current_user.netid, created_at: Time.now,
                       updated_at: Time.now)
    respond_to do |format|
      format.html { render json: @msg.to_json }
      format.json { render json: @msg.to_json }
    end
  end
end
