Freddiepettersson::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :pages, :only => [:index, :show]

  root :controller => "pages", :action => "show", :id => 1
  
  match "contact", :controller => "pages", :action => "show", :id => 2
  match "bio", :controller => "pages", :action => "show", :id => 3

end
