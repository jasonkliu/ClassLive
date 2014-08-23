class AddFieldsToMessages < ActiveRecord::Migration
  def change
  	  add_column :messages, :netid, :string
  	  add_column :messages, :courseid, :string
  	  add_column :messages, :content, :string
  	  add_column(:messages, :created_at, :datetime)
      add_column(:messages, :updated_at, :datetime)
  end
end
