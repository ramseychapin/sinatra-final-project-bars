require './config/environment'

class ApplicationController < Sinatra::Base

	configure do
		set :public_folder, 'public'
		set :views, 'app/views'
		enable :sessions
		set :session_secret, "sinatra_bars_password"
	end


	get '/' do
		# login_check("/users/:slug")
		erb :index
	end

	helpers do

		def login_check(redirect_url)
			if !logged_in?
				redirect redirect_url
			end
		end

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