class AddAttachmentThumbnailToPruebas < ActiveRecord::Migration
  def self.up
    change_table :pruebas do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :pruebas, :thumbnail
  end
end
