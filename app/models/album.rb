class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs

scope :unartist, -> { where( :artist => nil ) }

has_attached_file :thumbnail, :styles => { :medium =>     "300x300#", :thumb => "200x200#" }
validates_attachment :thumbnail, content_type: { content_type:     ["image/jpg", "image/jpeg", "image/png"] }

end
