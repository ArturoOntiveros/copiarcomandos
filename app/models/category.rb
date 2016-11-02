class Category < ActiveRecord::Base
	
	has_many :artists
	has_many :albums, through: :artists
	has_many :songs, through: :albums
	
end
