class User < ActiveRecord::Base

	has_many :bars
	has_many :drinks, through: :bars

end