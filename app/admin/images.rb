ActiveAdmin.register Image do
  form :html => { :multipart => true } do |f|
    f.inputs do
      f.input :project
      f.input :photo, :as => :file, :hint => f.template.image_tag(f.object.photo.url(:normal))
    end
    f.actions
  end
end
