Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :humen do
    resources :heads, defaults: {headable: "Human"}
  end
  resources :cats do
    resources :heads, defaults: {headable: "Cat"}
  end
end
