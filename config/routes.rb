Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :humen do
    resources :heads, defaults: {commentable: "Human"}
  end
  resources :cats do
    resources :heads, defaults: {commentable: "Cat"}
  end
end
