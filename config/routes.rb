Rails.application.routes.draw do
  get 'ping', to: 'application#ping'
  get 'db_test', to: 'application#db_test'
end
