class Bar < ActiveRecord::Base

	belongs_to :user
	has_many :bar_drinks
	has_many :drinks, through: :bar_drinks

end