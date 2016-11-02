ActiveAdmin.register Album do
permit_params :artist, :name, :year, :thumbnail

scope :unartist

	index do
		column "Artista", :artist
		column "Album", :name
		column "Año publicación", :year
		column "Imagen", :thumbnail
	actions
	end


form do |f|
  f.inputs "Project Details" do
    f.input :artist
    f.input :name
    f.input :year
    f.input :thumbnail, :required => false, :as => :file
    # Will preview the image when the object is edited
  end
  f.actions
 end

show do |ad|
  attributes_table do
    row :artist
    row :name
    row :year
    row :thumbnail do
      image_tag(ad.thumbnail.url(:thumb))
    end
    # Will display the image on show object page
  end
 end
end