Rails.application.routes.draw do
  resources :leads, only: [:new, :create]

	get '/contact', to: 'visitors#contact'
	get '/team', to: 'visitors#team'
	get '/careers', to: 'visitors#careers'
	get '/about-us', to: 'visitors#about', as: 'about'
	# get '/blog', to: 'visitors#blog'
	
  root to: 'visitors#index'
end
