Rails.application.routes.draw do

	root 'home#index'
	delete '/sessions' => 'sessions#destroy', as: :logout
  resources :users
  resources :posts
  resources :comments
  resources :home, only: [:index]
  resources :sessions, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
