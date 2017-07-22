Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'site#splash'
  devise_for :users

  authenticate :user do
    get '/pens' => 'pens#index'
    get '/pens/:id' => 'pens#profile', as: 'profile'

    resources :locations
    resources :interests
  end
end
