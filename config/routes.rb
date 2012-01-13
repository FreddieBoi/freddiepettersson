Freddiepettersson::Application.routes.draw do

  resources :places, :only => [:index, :show]

  resources :jobs, :only => [:index, :show]

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :pages, :only => [:index, :show]

  root :controller => "pages", :action => "show", :id => "home"

  match "contact", :controller => "pages", :action => "show", :id => "contact"
  match "bio", :controller => "pages", :action => "show", :id => "bio"

end
