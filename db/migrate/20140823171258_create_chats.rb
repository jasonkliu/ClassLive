class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
    	t.string :course_id
    	t.string :coursename
    end
  end
end
