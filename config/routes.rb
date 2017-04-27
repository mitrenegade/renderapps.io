Rails.application.routes.draw do

  # Marketing routes
  get '/contact', to: 'visitors#contact'
  get '/team', to: 'visitors#team'
  get '/careers', to: 'visitors#careers'
  get '/about-us', to: 'visitors#about', as: 'about'
  resources :leads, only: [:new, :create]
  
  # Calculator routes
  resources :estimates, only: [:create, :update]
  get '/estimate', to: 'calculator#app', as: 'estimate_app'
  get '/estimate/2', to: 'calculator#users', as: 'estimate_users'
  get '/estimate/3', to: 'calculator#features', as: 'estimate_features'
  get '/estimate/4', to: 'calculator#api', as: 'estimate_api'
  get '/estimate/5', to: 'calculator#extras', as: 'estimate_extras'
  get '/estimate/6', to: 'calculator#timeline', as: 'estimate_timeline'
  get '/estimate/7', to: 'calculator#results', as: 'estimate_results'
	
  root to: 'visitors#index'
end
