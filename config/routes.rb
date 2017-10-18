Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :persons do 
    resources :addresses, :only => [:index], :defaults => { :addressable => 'Person' }
  end

  resources :companies do
    resources :addresses, :only => [:index], :defaults => { :addressable => 'Company' }
  end
end
