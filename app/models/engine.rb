class Engine < ActiveRecord::Base
	has_many :cars
	validates :fueltype, inclusion:{ in: %w(diesel gas petrol)}

end
