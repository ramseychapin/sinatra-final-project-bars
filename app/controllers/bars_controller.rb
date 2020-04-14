class BarsController < ApplicationController

	get '/bars' do
		@user = User.find_by_id(session[:user_id])
		redirect '/bars/new' if @user.bars.empty?
		erb :'/bars/index'
	end

	post '/bars' do
		@bar = Bar.create(params)
		#need to persist to user
		redirect "/bars"
	end


	get '/bars/new' do
		erb :"/bars/new"
	end


	get '/bars/:id' do
		@user = User.find_by_id(session[:user_id])
		@bar = Bar.find_by_id(params[:id])
		erb :"/bars/show"
	end

	get '/bars/:id/edit' do
		@bar = Bar.find_by_id(params[:id])
		erb :"/bars/edit"
	end

	patch '/bars/:id' do
		@bar = Bar.find_by_id(params[:id])
		@bar.update(params)
		redirect '/bars/:id'
	end


	delete '/bars/:id/delete' do
		@bar = Bar.find_by_id(params[:id])
		@bar.delete if current_user == @bar.user
		redirect '/bars'
	end

end