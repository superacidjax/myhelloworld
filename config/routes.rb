Rails.application.routes.draw do
  mount Commontator::Engine => '/commontator'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  resources :charges
  resources :courses do
    resources :lessons
  end

  resources :sessions
  resources :users

  get 'sign_in' => 'sessions#new', as: :sign_in
  delete 'sign_out' => 'sessions#destroy', as: :sign_out
  get 'sign_up' => 'users#new', as: :sign_up
  get 'lesson_complete' => 'lessons#user_completed', as: :lesson_completed

  get 'apply_discount_code' => 'charges#apply_discount_code', as: :apply_discount_code
  post 'calculate_discount_price' => 'charges#calculate_discount_price', as: :calculate_discount_price
end
