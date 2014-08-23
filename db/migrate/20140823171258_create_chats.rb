class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
    	t.string :netid
    	t.string :courseid
    	t.string :content
    	t.timestamp
    end
  end
end
