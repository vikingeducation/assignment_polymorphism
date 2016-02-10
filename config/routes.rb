Rails.application.routes.draw do
  resources :dogs do
    resources :humans
  end

  resources :cats do
    resources :humans
  end
end
