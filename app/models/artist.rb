class Artist < ActiveRecord::Base

	has_many :albums
	has_many :songs, through: :albums

has_attached_file :thumbnail, :styles => { :medium =>     "300x300#", :thumb => "200x200#" }
validates_attachment :thumbnail, content_type: { content_type:     ["image/jpg", "image/jpeg", "image/png"] }



end