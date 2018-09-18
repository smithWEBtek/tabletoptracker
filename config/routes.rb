Rails.application.routes.draw do
	get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
    get '/signup' => 'users#new'
	resources :users
	resources :games do
		resources :matches
	end


	root :to => 'welcome#index'
    
end
