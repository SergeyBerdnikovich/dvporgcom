Dvporgcom::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  root :to => 'pages#welcome'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :projects, :only => [:show]
  resources :news, :only => [:show, :index]
  get "pages/design"
  get "pages/development"
  get "pages/seo_optimization"
  get "pages/works"
  get "pages/team"
  get "pages/contacts"
  resources :pages, :only => [:show]
end
