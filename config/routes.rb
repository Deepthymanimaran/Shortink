Rails.application.routes.draw do
  resources :urls, only: [:index, :new, :create, :show]
  resources :users, only: [:index, :new, :create, :show]
  get 'urls/index'
  get 'urls/new'
  get 'users/new'
  get 'users/edit'
  get 'users/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
