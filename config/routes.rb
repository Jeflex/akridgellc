Rails.application.routes.draw do
  resources :property_attachments
  resources :properties
  get 'sessions/new'

  resources :users
  resources :applicants
  get 'welcome/index'
  root 'welcome#index'

  get '/about', to:"welcome#about"
  get '/properties', to:"welcome#properties"
  get '/contact', to:"welcome#contact"
  get '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/send_apply_mail', to:"applicants#send_apply_email"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace "admin" do
    resources :users
    resources :applicants
  end
end
