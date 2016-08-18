Rails.application.routes.draw do
  resources :plastics do
    resources :chairs
  end
  resources :woods do
    resources :chairs
  end
end
