class BarsController < ApplicationController

	get '/bars' do
		@bars = Bar.all
		erb :'/bars/index'
	end

	post '/bars' do
		Bar.create(params)
		redirect "/bars"
	end


	get '/bars/new' do
		erb :"/bars/new"
	end


	get '/bars/:id' do
		@bar = Bar.find_by_id(params[:id])
		erb :"/bars/show"
	end

	patch '/bars/:id' do
		
	end

	get '/bars/:id/edit' do

	end

	delete '/bars/:id/delete' do


	end

end