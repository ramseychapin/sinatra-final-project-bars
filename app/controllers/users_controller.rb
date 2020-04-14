class UsersController < ApplicationController

	get '/signup' do
		redirect_if_logged_in("/bars")
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
		redirect_if_logged_in("/bars")
		erb :'/users/login'
	end

	post '/login' do
		user = User.find_by(username: params[:username])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect "/users/#{session[:user_id]}"
		else
			erb :'/users/login'
		end
	end


	get '/logout' do
		redirect_if_logged_in("/bars")
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
		redirect_if_not_logged_in('/')
		@user = User.find_by_id(session[:user_id])
		erb :"/users/show"
	end

end