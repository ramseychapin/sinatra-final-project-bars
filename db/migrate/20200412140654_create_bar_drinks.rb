class CreateBarDrinks < ActiveRecord::Migration[5.2]
  def change
  	create_table :bar_drinks do |t|
  		t.integer :bar_id
  		t.integer :drink_id
  	end
  end
end
