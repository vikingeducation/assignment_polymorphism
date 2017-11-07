Rails.application.routes.draw do
  resources :labs do
    resources :teaching_assistants, defaults: { teach_duty: 'Lab' }
  end

  resources :courses do
    resources :teaching_assistants, defaults: { teach_duty: 'Course' }
  end
end
