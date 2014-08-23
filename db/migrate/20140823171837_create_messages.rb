class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :netid
    	t.string :course_id
    	t.string :content
    	t.timestamps
    end
  end
end
