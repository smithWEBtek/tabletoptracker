Rails.application.routes.draw do
	get '/signin' => 'sessions#new'
    post '/signin' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
    get '/signup' => 'users#new'
	resources :users
	resources :games
	resources :matches
	root :to => 'welcome#index'
    
end
