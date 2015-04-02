Rails.application.routes.draw do
  
	root 'static_pages#home'

	match '/home',																					to: 'static_pages#home',					via: 'get'
	match '/motivation',																		to: 'static_pages#motivation',		via: 'get'

	match '/signup',																				to: 'users#new',									via: 'get'
	match '/signin',																				to: 'sessions#new',								via: 'get'
	match '/edit',																					to: 'users#edit',									via: 'post'
	match '/signout',																				to: 'sessions#destroy', 					via: 'delete'

	
	resources :users, except: 	[:new]
	resources :sessions, only:  [:create]
	
  resources :todo_lists do
    resources :todo_items do
    	member do
    		patch :complete
    	end
    end
  end

  # root "todo_lists#index"
end
