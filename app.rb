#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'sinatra/activerecord'

set :database, "sqlite3:leprozoriumhq.db"

class Post < ActiveRecord::Base
	validates :name, presence: true
	validates :content, presence: true
end



get '/' do
	@posts = Post.all 
	erb :index
end


get '/new' do
	@n = Post.new
	erb :new
end

post '/new' do
	#get variable from post

	@n = Post.new params[:post]
	if 	@n.save
		erb "<h2>Thanks</h2>"
	else
		@error = @n.errors.full_messages.first
		erb :new
	end
end 