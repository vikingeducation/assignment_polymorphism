Rails.application.routes.draw do

  resources :libraries do
    resources :books
  end

  resources :bookstores do
    resources :books
  end
  
end
