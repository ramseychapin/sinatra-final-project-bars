class Drink < ActiveRecord::Base

	has_many :bar_drinks
	has_many :bars, through: :bar_drinks
	has_many :users, through: :bars

end