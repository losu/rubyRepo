#coding: UTF-8

class Car < ActiveRecord::Base
	belongs_to :engine

	validates :cartype, inclusion:{ in: %w(suv coupe sedan combi)}
	validates :brand, :car_model, presence: true


end
