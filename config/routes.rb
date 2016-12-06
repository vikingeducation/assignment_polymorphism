Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'colleges#index'

  resources :high_schools, only: [:index] do
    resources :teachers, only: [:index], defaults: { institution: 'HighSchool'}
  end

  resources :middle_schools, only: [:index] do
    resources :teachers, only: [:index], defaults: { institution: 'MiddleSchool'}
  end

  resources :colleges, only: [:index] do
    resources :teachers, only: [:index], defaults: { institution: 'College'}
  end
end
