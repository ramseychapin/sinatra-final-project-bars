require './config/environment'

class ApplicationController < Sinatra::Base

	configure do
		set :public_folder, 'public'
		set :views, 'app/views'
		enable :sessions
		set :session_secret, "sinatra_bars_password"
	end


	get '/' do
		redirect_if_logged_in("/bars")
		erb :index
	end

	helpers do

		def redirect_if_logged_in(redirect_url)
			if logged_in?
				redirect redirect_url
			end
		end

		def redirect_if_not_logged_in(redirect_url)
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