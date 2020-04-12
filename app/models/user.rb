class User < ActiveRecord::Base
	extend Slugifiable::ClassMethods
	include Slugifiable::InstanceMethods

	has_many :bars
	has_many :drinks, through: :bars

	has_secure_password
	validates_presence_of :username, :email, :password_digest

end