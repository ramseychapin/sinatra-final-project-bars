class DrinksController < ApplicationController

	get '/drinks' do
		@user = User.find_by_id(session[:user_id])
		erb "/drinks/index"
	end


	post '/drinks' do
		@drink = Drink.create(params)
		#need to persist to user
		redirect '/'
	end


	

end