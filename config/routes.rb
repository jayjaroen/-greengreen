Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "pages#landing"
  get 'pages/home', to: 'pages#home', as: 'home'
  get 'users/profile', to: 'users#profile', as: 'profile'


  resources :users, only:[:edit, :update]
  resources :tips, only:[:index, :show, :new, :create]
  resources :challenge_categories, only:[:index, :show, :new, :create] do
    resources :challenges, only:[:index]
  end
  resources :challenges, only:[:show, :new, :create] do
    resources :user_challenges, only:[:create]
  end
  resources :user_challenges, only:[:show] do
    resources :user_challenge_records, only:[:show, :create]
  end
  resources :rankings, only:[:index]

end
