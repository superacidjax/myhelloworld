Rails.application.routes.draw do



  resources :courses
  resources :sessions
  resources :users

  get 'sign_in' => 'sessions#new', as: :sign_in
  get 'sign_out' => 'sessions#destroy', as: :sign_out
  get 'sign_up' => 'users#new', as: :sign_up
end
