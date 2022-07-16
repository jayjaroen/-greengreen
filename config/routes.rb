Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "pages#landing"
  get 'pages/home', to:'pages#home', as: 'home'
  get 'users/:id/profile', to: 'users#profile', as: 'profile'

  resources :tips, only:[:index, :show]
  resources :challenge_categories, only:[:index, :show]
  resources :challenges, only:[:show] do
    resources :user_challenges, only:[:create]
  end
  resources :user_challenges, only:[:show] do
    resources :user_challenge_records, only:[:show, :create]
  end

end
