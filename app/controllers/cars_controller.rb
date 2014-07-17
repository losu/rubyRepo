#codding: UTF-8

class CarsController < ApplicationController

	before_action :authenticate_user!, except: [:index]

	def index
		@car=Car.all	
	end

	def show
		@car=Car.find(params[:id])
	end

	def destroy
		@car=Car.find(params[:id])
		@car.destroy
		redirect_to root_url, alert: "usunieto #{@car.brand} !"
	end

	def new
		@car=Car.new
	end
	
	def create
		@car=Car.new(car_params)
		if @car.save
			redirect_to root_url, notice: "Utworzono!"
		else 
			render 'new'
		end
	end

	def edit
		@car=Car.find(params[:id])
	end

	def update
		@car=Car.find(params[:id])
		if @car.update(car_params)
			redirect_to root_url, notice: "Edytowano!"
		else 
			render 'edit'
		end
		
	end

	private 
	def car_params
		params.require(:car).permit(:brand,:car_model,:cartype)
	end
end