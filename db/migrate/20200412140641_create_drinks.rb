class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
  	create_table :drinks do |t|
  		t.string :name
  		t.text :ingredients
  	end
  end
end
