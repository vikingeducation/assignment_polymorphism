Rails.application.routes.draw do
  

  resources :photos, :only => [:index] do
    resources :comments, :defaults => { :commentable => 'Photo' }
  end

  resources :articles, :only => [:index]  do
    resources :comments, :defaults => { :commentable => 'Post' }
  end

end
