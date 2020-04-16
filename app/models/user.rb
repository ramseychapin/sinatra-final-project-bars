require_relative '../models/concerns/slugifiable.rb'
class User < ActiveRecord::Base
	extend Slugifiable::ClassMethods
	include Slugifiable::InstanceMethods

	has_secure_password
	validates_presence_of :username, :email, :password_digest, :message => "Make sure these fields aren't empty!"

	has_many :bars
	has_many :drinks, through: :bars

end