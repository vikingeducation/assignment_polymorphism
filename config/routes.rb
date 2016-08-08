Rails.application.routes.draw do

  resources :countries do
    resources :athletes, :defaults => { :athletable => 'Country' }
  end

  resources :sports do
    resources :athletes, :defaults => { :athletable => 'Sport' }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
