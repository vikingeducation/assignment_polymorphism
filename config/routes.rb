Rails.application.routes.draw do

  resources :books do
    # Now the `:authored` key is present in `params`!
    resources :authors, :defaults => { :authored => 'Book' }
  end

  resources :songs do
    # Now the `:authored` key is present in `params`!
    resources :authors, :defaults => { :authored => 'Song' }
  end

end