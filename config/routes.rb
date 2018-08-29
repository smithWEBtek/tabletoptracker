Rails.application.routes.draw do
	resources :users
	resources :games
	resources :matches
end
