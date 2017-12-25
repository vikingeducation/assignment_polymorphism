Rails.application.routes.draw do

  resources :applicants do
    resources :tags, only: [:index], :defaults => { :taggable => 'Applicant' }
  end

  resources :jobs do
    resources :tags, only: [:index], :defaults => { :taggable => 'Job' }
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
