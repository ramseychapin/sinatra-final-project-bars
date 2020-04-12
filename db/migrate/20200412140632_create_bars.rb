class CreateBars < ActiveRecord::Migration[5.2]
  def change
  	create_table :bars do |t|
  		t.string :name
  		t.integer :user_id
  		t.string :address
  		t.string :bartender_name
  		t.string :website
  		t.date :last_time_visited
  	end
  end
end
