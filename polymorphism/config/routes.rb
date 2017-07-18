Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :clients do
    resources :addresses
  end

  resources :employees do
    resources :addresses
  end

  resources :vendors do
    resources :addresses
  end

end
