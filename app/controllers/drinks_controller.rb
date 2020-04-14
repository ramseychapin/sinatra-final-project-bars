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

	get '/drinks/new' do
		erb :"/drinks/new"
	end

	get '/drinks/:id' do
		@drink = Drink.find_by_id(params[:id])
		erb :"/drinks/show"
	end

	get '/drinks/:id/edit' do
		@drink = Drink.find_by_id(params[:id])
		erb :"/drinks/edit"
	end

	patch '/drinks/:id' do
		@drink = Bar.find_by_id(params[:id])
		@drink.update(params)
		# redirect '/drinks/:id'
	end


	delete '/drinks/:id/delete' do
		@drink = Drink.find_by_id(params[:id])
		@drink.delete if current_user == @drink.user
		redirect '/drinks'
	end
	

end