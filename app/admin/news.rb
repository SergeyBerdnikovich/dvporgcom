ActiveAdmin.register News do
  form do |f|
    f.inputs do
      f.input :title
      f.input :content, :input_html => {:class => "ckeditor"}
    end
    f.buttons
  end

  show do
    attributes_table do
      row :id
      row :title
      row :created_at
      row :updated_at
      row (:content) { |news| raw(news.content) }
    end
    active_admin_comments
  end

  index do
    column :id
    column :title
    column (:content) { |news| news.content[0..50] }
    column :created_at
    column :updated_at

    default_actions
  end
end
