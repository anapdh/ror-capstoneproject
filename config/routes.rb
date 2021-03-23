Rails.application.routes.draw do
  resources :opinions

  devise_for :users, :controllers => { registrations: 'registrations', users: 'users'}
  match '/users',   to: 'users#index',   via: 'get'
  match 'users/:id' => 'users#show', via: :get

  root to: "opinions#index"
end
