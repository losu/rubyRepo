#codding: UTF-8

class EngineController < ApplicationController

	#before_action :authenticate_user!, except: [:index]

	def index
		@engine=Engine.all	
	end

	def show
		@engine=Engine.find(params[:id])
	end

	def destroy
		@engine=Engine.find(params[:id])
		@engine.destroy
		redirect_to root_url, alert: "usunieto !"
	end

	def new
		@engine=Engine.new
	end
	
	def create
		@engine=Engine.new(engine_params)
		if @engine.save
			redirect_to root_url, notice: "Utworzono!"
		else 
			render 'new'
		end
	end

	def edit
		@engine=Engine.find(params[:id])
	end

	def update
		@engine=Engine.find(params[:id])
		if @engine.update(engine_params)
			redirect_to root_url, notice: "Edytowano!"
		else 
			render 'edit'
		end
		
	end

	private 
	def engine_params
		params.require(:engine).permit(:fueltype,:power)
	end
end