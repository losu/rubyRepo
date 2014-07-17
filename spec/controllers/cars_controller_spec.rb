srequire 'rails_helper'

RSpec.describe CarsController, type: :controller do 

	before(:each) do 
	@user=User.Create(email: "test@test.pl", password: "test")	
	sign_in @user	
	end
	describe "GET @index" do
		it 'should render properly with status 200'  do

			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)

		end
		

		it 'should render index template' do
			
			get :index
			expect(response).to render_template('index')	

		end

	end

	describe "POST #create" do
		it 'redirects to cars_path after successful creation'
			post :create, car: {brand: "audi"}
	end



	
end