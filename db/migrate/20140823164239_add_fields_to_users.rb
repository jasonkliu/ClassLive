class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :netid, :string
    add_column :users, :email, :string
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :college, :string
    add_column :users, :year, :integer
  end
end
