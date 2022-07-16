Rails.application.routes.draw do
 
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "pages#landing
 

  resources :users, only:[:show]
  resources :tips, only:[:index, :show]
  resources :challenge_categories, only:[:index, :show] do
    resources :challenges, only:[:index, :show]
  end
  resources :challenges, only:[:create]

end
