class ApplicationController < Sinatra::Base

	configure do
		set :public_folder, 'public'
		set :views, 'app/views'
		enable :sessions
		set :session_secret, "sinatra_bars_password"
	end


	get '/' do
		erb :index
	end

	helpers do

		def logged_in?
			!!session[:user_id]
		end

		def current_user
			@user = User.find(session[:user_id])
		end

		def logout!
			session.clear
		end

	end


end