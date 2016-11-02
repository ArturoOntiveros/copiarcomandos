class Artist < ActiveRecord::Base
  belongs_to :category
  has_many :albums
  has_many :songs, through: :albums
end
