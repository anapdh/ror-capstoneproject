Rails.application.routes.draw do
  root to: "opinions#index"
  match '/opinions/new', to: 'opinions#index', via: 'get'

  devise_for :users, :controllers => { registrations: 'registrations', users: 'users'}
  match '/users', to: 'users#index', via: 'get'
  match '/users/:id', to: 'users#show', via: 'get', :as => :users_show
  match '/users/:id/follow', to: 'users#follow', via: 'post', :as => :follow
  match '/users/:id/unfollow', to: 'users#unfollow', via: 'post', :as => :unfollow
  
  resources :opinions
end
