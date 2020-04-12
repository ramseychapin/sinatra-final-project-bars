require_relative '../models/concerns/slugifiable.rb'
class Drink < ActiveRecord::Base
	extend Slugifiable::ClassMethods
	include Slugifiable::InstanceMethods

	belongs_to :bar
	
end