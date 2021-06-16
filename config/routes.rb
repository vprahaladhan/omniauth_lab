Rails.application.routes.draw do
  get '/', to: 'welcome#home'
  get 'welcome/home', as: 'root'
  # Add your routes here
  match '/auth/github/callback', to: 'sessions#create', via: [:get, :post]
end
