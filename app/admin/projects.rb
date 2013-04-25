ActiveAdmin.register Project do
  form :html => { :multipart => true } do |f|
    f.inputs "Project" do
      f.input :title
      f.input :description
      f.input :date
    end
    f.inputs "Photo",
      :for => [:image,
               if f.object.image
                 f.object.image
               else
                 f.object.build_image
               end
             ] do |fm|
      fm.input :photo, :as => :file, :hint => fm.template.image_tag(fm.object.photo.url(:normal))
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :description
      row :date
      row :created_at
      row :updated_at
      row :image do |ptoject|
        image_tag ptoject.image.photo.url(:normal) if ptoject.image
      end
    end
    active_admin_comments
  end
end
