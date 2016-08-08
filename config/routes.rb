Rails.application.routes.draw do
  resources :breakfast_orders do
    resources :dishes, defaults: { :dishable => 'BreakfastOrder' }
  end

  resources :lunch_orders do
    resources :dishes, defaults: { :dishable => 'LunchOrder' }
  end

  resources :dinner_orders do
    resources :dishes, defaults: { :dishable => 'DinnerOrder' }
  end
end
