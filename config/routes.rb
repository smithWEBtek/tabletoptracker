Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
	resources :users, path_names: { new: 'signup'}
	resources :games
	resources :matches
	root :to => 'welcome#index'
    get '/signin' => 'sessions#new'
    post '/signin' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
end
