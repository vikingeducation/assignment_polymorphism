Rails.application.routes.draw do

  resources :deer do
    resources :movement
  end

  resources :fish do
    resources :movement
  end

  resources :birds do
    resources :movement
  end

end
