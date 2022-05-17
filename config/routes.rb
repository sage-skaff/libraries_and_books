Rails.application.routes.draw do
  get '/libraries', to: 'libraries#index'
  get '/libraries/:id', to: 'libraries#show'
  get '/books', to: 'books#index'
  get '/books/:id', to: 'books#show'
end
