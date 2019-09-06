class CreatePost < ActiveRecord::Migration[5.2]
  def change
  	create_table :posts do |post|
  		post.text :name
  		post.timestamp
  	end

  	Post.create :name => 'first post'

  end
end
