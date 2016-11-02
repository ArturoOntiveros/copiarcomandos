ActiveAdmin.register Album do
permit_params :artist, :name, :year, :thumbnail
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
	index do
		column :artist
		column :name
		column :year
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