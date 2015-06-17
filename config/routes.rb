Rails.application.routes.draw do
  resources :videos do
    resources :tags, defaults: { taggable: 'Video' }
  end

  resources :images do
    resources :tags, defaults: { taggable: 'Image' }
  end
end
