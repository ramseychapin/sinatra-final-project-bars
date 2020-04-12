class UsersController < ApplicationController

	get '/signup' do
		erb :'/users/signup'
	end

	post '/signup' do

	end



	get '/login' do
		erb :'/users/login'
	end

	post '/login' do

	end


	get '/logout' do
		login_check("/login")
		erb :'/users/logout'
	end


	get '/users/:slug' do

	end

end