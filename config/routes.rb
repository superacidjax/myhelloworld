Rails.application.routes.draw do
  mount Commontator::Engine => '/commontator'

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
end
