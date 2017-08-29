Rails.application.routes.draw do
	
  root 'portfolios#index'

  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

end
