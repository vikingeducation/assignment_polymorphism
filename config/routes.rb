Rails.application.routes.draw do

  resources :bars do
    resources :employees
  end
  resources :coffee_shops do
    resources :employees
  end

end
