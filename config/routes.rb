Rails.application.routes.draw do

  resources :mp3 do
    resources :songs, :defaults => { :medium => 'Mp3' }
  end

  resources :record do
    resources :songs, :defaults => { :medium => 'Record' }
  end

  resources :cd do
    resources :songs, :defaults => { :medium => 'Cd' }
  end

end
