require_relative '../models/concerns/slugifiable.rb'
class Bar < ActiveRecord::Base
	extend Slugifiable::ClassMethods
	include Slugifiable::InstanceMethods

	belongs_to :user
	has_many :drinks
	validates_presence_of :name, :message => "Make sure to at least add a name!!"

end