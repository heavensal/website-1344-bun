Rails.application.routes.draw do

  root 'pages#home'
  get '/consulting', to: 'pages#consulting'
  get '/web', to: 'pages#web'
  get '/automation', to: 'pages#automation'
  get '/marketing', to: 'pages#marketing'
  get '/hosting', to: 'pages#hosting'

  post 'contact_form', to: 'contacts#create', as: 'contact_form'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
