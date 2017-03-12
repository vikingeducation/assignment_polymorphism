Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'songs#index'
  resources :songs, only: :index
  resources :albums, only: :index do
    resources :songs, only: :index, defaults: { type: 'Album'}
  end
  resources :singles, only: :index do
    resources :songs, only: :index, defaults: { type: 'Single'}
  end
end
