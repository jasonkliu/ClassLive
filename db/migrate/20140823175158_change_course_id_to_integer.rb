class ChangeCourseIdToInteger < ActiveRecord::Migration
  def change
  	remove_column :messages, :course_id, :string
  	remove_column :chats, :course_id, :string
  	add_column :messages, :course_id, :integer
  	add_column :chats, :course_id, :integer
  end
end
