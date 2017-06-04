ActiveAdmin.register Song do

controller do
nested_belongs_to :artist, :album, optional: true
end

permit_params :title, :composer, :time, :album_id, :audio
		
	index do
	    selectable_column
	  	  column "Nombre", :title
	  	  column "Compositor", :composer
	      column "Tiempo", :time do |t|
	      	 t.time.strftime('%M:%S')
	      end
	  	actions
	end

	form do |f|
	  f.inputs "Project Details" do
	    f.input :album
	    f.input :title
	    f.input :composer
	    f.input :time
	    f.input :audio, :required => true, :as => :file
	    # Will preview the image when the object is edited
	  end
	  f.actions
	 end

	show do |ad|
	  attributes_table do
	    row :album
	    row :title
	    row :composer
	    row :time
	    row :audio do |item|
	      audio_tag item.audio
	    end
	    # Will display the image on show object page
	  end
	end
	

end