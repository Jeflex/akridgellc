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
  delete '/destroy_prop', to:"properties#destroy"
  delete '/destroy_att', to:"property_attachments#destroy"
  post '/send_apply_mail', to:"applicants#send_apply_email"
  get '/option', to:"welcome#admin"
  get '/proplist', to:"properties#list"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace "admin" do
    resources :users
    resources :applicants
    resources :properties
    resources :property_attachments

    get '/destroy_property', to:"properties#destroy"

  end
end
