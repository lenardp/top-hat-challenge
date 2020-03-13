Rails.application.routes.draw do
  get 'ping', to: 'application#ping'
  get 'db_test', to: 'application#db_test'

  resources :postings, only: [:index]

  post 'postings/create', to: 'postings#create'
end
