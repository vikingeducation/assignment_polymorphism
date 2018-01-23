Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :products do
    resources :reviews, defaults: { reviewable: 'Product' }
  end

  resources :sellers do
    resources :reviews, defaults: { reviewable: 'Seller' }
  end


end
