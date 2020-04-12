class BarDrink < ActiveRecord::Base

	belongs_to :bar
	belongs_to :drink

end