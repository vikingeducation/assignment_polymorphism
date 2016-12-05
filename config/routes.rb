Rails.application.routes.draw do
  get 'engines/index'

  resources :cars do
    resources :engines
  end

  resources :motorcycles do
    resources :engines
  end
end
