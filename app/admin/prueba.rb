ActiveAdmin.register Prueba do

permit_params :nombre, :correo, :cantidad, :imag, :thumbnail

form do |f|
  f.inputs "Project Details" do
    f.input :nombre
    f.input :correo
    f.input :cantidad
    f.input :imag
    f.input :thumbnail, :required => false, :as => :file
    # Will preview the image when the object is edited
  end
  f.actions
 end

show do |ad|
  attributes_table do
    row :nombre
    row :thumbnail do
      image_tag(ad.thumbnail.url(:thumb))
    end
    # Will display the image on show object page
  end
 end
end