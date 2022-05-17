Rails.application.routes.draw do
  get '/libraries', to: 'libraries#index'
  get '/libraries/:id', to: 'libraries#show'
end
