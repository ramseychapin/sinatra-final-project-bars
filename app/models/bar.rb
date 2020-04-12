require_relative '../models/concerns/slugifiable.rb'
class Bar < ActiveRecord::Base
	extend Slugifiable::ClassMethods
	include Slugifiable::InstanceMethods

	belongs_to :user
	has_many :drinks

end