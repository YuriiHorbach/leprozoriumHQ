class CreatePosts < ActiveRecord::Migration[5.2]
  def change
  	create_table :post do |p|
  		p.text :name
  		p.text :content
  		p.timestamp
  	end
  end
end
