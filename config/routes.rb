Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'high_schools#index'

  resources :high_schools do
    resources :teachers, only: [:index], defaults: { institution: 'HighSchool'}
  end

  resources :middle_schools do
    resources :teachers, only: [:index], defaults: { institution: 'MiddleSchool'}
  end

  resources :colleges do
    resources :teachers, only: [:index], defaults: { institution: 'College'}
  end
end
