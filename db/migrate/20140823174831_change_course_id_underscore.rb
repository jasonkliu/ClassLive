class ChangeCourseIdUnderscore < ActiveRecord::Migration
  def change
  	remove_column :messages, :courseid, :string
  	remove_column :chats, :courseid, :string
  	add_column :messages, :course_id, :string
  	add_column :chats, :course_id, :string
  end
end
