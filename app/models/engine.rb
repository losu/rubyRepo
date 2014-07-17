class Engine < ActiveRecord::Base
	has_many :cars
	validates :fuelType, inclusion:{ in: %w(diesel gas petrol)}

end
