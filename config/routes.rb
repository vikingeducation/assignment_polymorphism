Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments, :defaults => { :commentable => 'Post' }
  end

  resources :photos do
    resources :comments, :defaults => { :commentable => 'Photo' }
  end
end
