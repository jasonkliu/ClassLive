class AddFieldsToChats < ActiveRecord::Migration
  def change
  	add_column :chats, :courseid, :string
  	add_column :chats, :coursename, :string
  end
end
