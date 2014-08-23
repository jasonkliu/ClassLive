class FixModel < ActiveRecord::Migration
  def change
  	drop_table :courses
  	remove_column :messages, :course_id, :integer
  	remove_column :chats, :course_id, :integer
  	add_column :messages, :course_id, :string
  	add_column :chats, :course_id, :string
  end
end
