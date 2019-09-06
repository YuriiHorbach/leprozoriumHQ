#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
require 'sinatra/activerecord'

set :database, "sqlite3:leprozoriumhq.db"

class Post < ActiveRecord::Base

end



get '/' do
	@posts = Post.all 
	erb :index
end


