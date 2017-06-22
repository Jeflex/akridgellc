Rails.application.routes.draw do
  resources :applicants
  get 'welcome/index'
  root 'welcome#index'

  get '/about', to:"welcome#about"
  get '/properties', to:"welcome#properties"
  get '/contact', to:"welcome#contact"

  post '/send_apply_mail', to:"applicants#send_apply_email"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
