Rails.application.routes.draw do
  root to: 'schedule_data#index'
  resources :schedule_data
end
