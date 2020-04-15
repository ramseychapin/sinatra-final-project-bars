class DrinksController < ApplicationController

	get '/drinks' do
		redirect_if_not_logged_in("/")
		@user = User.find_by_id(session[:user_id])
		erb "/drinks/index"
	end


	post '/drinks' do
		@drink = Drink.create(name: params[:name], ingredients: params[:ingredients])
		@bar = Bar.find_by_id(params[:bar])
		@bar.drinks << @drink
		redirect '/'
	end

	get '/drinks/new' do
		redirect_if_not_logged_in("/")
		@bars = current_user.bars
		erb :"/drinks/new"
	end

	get '/drinks/:id' do
		redirect_if_not_logged_in("/")
		@drink = Drink.find_by_id(params[:id])
		erb :"/drinks/show"
	end

	get '/drinks/:id/edit' do
		redirect_if_not_logged_in("/")
		@drink = Drink.find_by_id(params[:id])
		erb :"/drinks/edit"
	end

	patch '/drinks/:id' do
		@drink = Drink.find_by_id(params[:id])
		@drink.update(params[:drink])
		redirect "/drinks/#{@drink.id}"
	end


	delete '/drinks/:id/delete' do
		@drink = Drink.find_by_id(params[:id])
		@drink.delete if current_user == @drink.user
		redirect '/drinks'
	end
	

end