Rails.application.routes.draw do

	get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
    get '/signup' => 'users#new'
    get '/auth/facebook/callback' => 'sessions#create'

	resources :users
	resources :games do
		resources :matches
	end

	resources :scythes, only: [:index]


	root :to => 'welcome#index'
    
end
