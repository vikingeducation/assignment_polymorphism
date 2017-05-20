Rails.application.routes.draw do
  

  resources :photos do
    resources :comments, :defaults => { :commentable => 'Photo' }
  end

  resources :articles do
    resources :comments, :defaults => { :commentable => 'Post' }
  end

end
