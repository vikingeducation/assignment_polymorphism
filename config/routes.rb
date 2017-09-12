Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :universities, only: [] do
    resources :students, only: [:index], defaults: { commentable: 'University' }
  end

  resources :cooking_classes, only: [] do
    resources :students, only: [:index], defaults: { commentable: 'CookingClass' }
  end
end
