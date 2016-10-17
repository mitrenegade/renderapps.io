Rails.application.routes.draw do
  resources :leads, only: [:new, :create]

	get '/contact', to: 'visitors#contact'
  root to: 'visitors#index'
end
