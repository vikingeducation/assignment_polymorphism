Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pages do
    resources :likes, :defaults => {:likable => "Page"}
  end
  resources :statuses do
    resources :likes, :defaults => {:likable => "Status"}
  end
end
