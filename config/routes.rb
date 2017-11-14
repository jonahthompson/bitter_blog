Rails.application.routes.draw do

  resources :users
  resources :posts
  resources :comments
  resources :home, only: [:index]
  resources :sessions, only: [:new, :create]
	delete '/sessions' => 'sessions#destroy', as: :logout

	resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
