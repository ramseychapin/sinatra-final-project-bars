require_relative '../models/concerns/slugifiable.rb'
class Drink < ActiveRecord::Base
	extend Slugifiable::ClassMethods
	include Slugifiable::InstanceMethods

	belongs_to :bar
	validates_presence_of :name, :message => "Make sure to at least add a name!!"
	
end