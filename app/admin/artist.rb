ActiveAdmin.register Artist do
permit_params :name, :thumbnail, :price, :cd
	index do
	    selectable_column
	  	  column "Nombre", :name do |artist|
	        link_to artist.name, admin_artist_path(artist) 
	      end
	      column "Imagen", :thumbnail
	      column "Precio", :price
	      column "Albumes", :albumes_del_artista do |artist|
	      	link_to artist.albums.count, admin_artist_albums_path(artist) 
		  end
	      column "Canciones", :canciones_del_artista do |artist|
	      link_to artist.songs.count, admin_artist_songs_path(artist) 
		  end
	    actions
	end

	member_action :songs do
		@songs = Artist.find(params[:id]).songs
    end
    	form do |f|
	  f.inputs "Project Details" do
	    f.input :name
	    f.input :price
	    f.input :cd
	    f.input :thumbnail, :required => false, :as => :file
	    # Will preview the image when the object is edited
	  end
	  f.actions
	 end
	show do |ad|
	  attributes_table do
	    row :name
	    row :price
	    row :cd
	    row :thumbnail do
	      image_tag(ad.thumbnail.url(:thumb))
	    end
	    # Will display the image on show object page
	  end
	 end
end