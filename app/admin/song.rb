ActiveAdmin.register Song do
permit_params :album, :title, :composer, :time, :audio


	index do
		column :album
		column :title
		column :composer
		column :time
	end


form do |f|
  f.inputs "Project Details" do
    f.input :album
    f.input :title
    f.input :composer
    f.input :time
    f.input :audio, :required => false, :as => :file
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
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


