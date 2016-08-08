Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :spaceships do
  resources :pilots, :defaults => { :vehicle => 'spaceship'}
end

resources :planes do
  resources :pilots, :defaults => { :vehicle => 'plane'}
end

end
