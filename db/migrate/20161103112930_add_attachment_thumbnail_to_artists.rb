class AddAttachmentThumbnailToArtists < ActiveRecord::Migration
  def self.up
    change_table :artists do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :artists, :thumbnail
  end
end
