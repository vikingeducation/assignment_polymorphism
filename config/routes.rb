Rails.application.routes.draw do

  resources :gardens do
    resources :plants, defaults: { :plantable => "Garden" }
  end

  resources :forests do
    resources :plants, defaults: { :plantable => "Forest" }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
