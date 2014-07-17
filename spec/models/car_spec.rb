require 'rails_helper'

RSpec.describe Car, type: :model do 

	#it 'should have attributes :brand, :carModel, :engine_id' do
	# 	expect(subject.attributes).to 
	# 	include('brand','carModel','engine_id')
	# end

	it 'should validate brand presnece'  do
	 	expect(car.new).not_to be_valid
	 	expect(car.new(brand: 'merc')).to be_valid
	end

	it 'should has one engine' do
		t=Car.reflect_on_asspciation(:engines)
		expect(t.macro).to equal :belongs_to
	end


	


end
