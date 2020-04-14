class UsersController < ApplicationController

	get '/signup' do
		redirect "/users/" if logged_in?
		erb :'/users/signup'
	end

	post '/signup' do
		@user = User.new(email: params[:email], username: params[:username], password: params[:password])
		if @user.save
			session[:user_id] = @user.id
			redirect "/users/:id"
		else
			redirect '/signup'
		end
	end

	get '/login' do
		redirect "/users/:id" if logged_in?
		erb :'/users/login'
	end

	post '/login' do
		user = User.find_by(username: params[:username])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect "/users/:id"
		else
			erb :'/users/login'
		end
	end


	get '/logout' do
		redirect "/users/:id" if logged_in?
		erb :'/users/logout'
	end

	post '/logout' do
		if logged_in?
			logout!
			redirect '/'
		end
		redirect '/login'
	end


	get '/users/:id' do
		@user = User.find_by_id(session[:user_id])
		# @user = User.find_by_slug(params[:slug])
		erb :"/users/show"
	end

end