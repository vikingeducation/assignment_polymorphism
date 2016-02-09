Rails.application.routes.draw do
  root 'games#index'

  resources :games do
    resources :reviews,
              defaults: { reviewable: 'Game'}
  end

  resources :movies do
    resources :reviews,
              defaults: { reviewable: 'Movie'}
  end
end