Rails.application.routes.draw do
  get '/top' => 'books#top'
  get 'books/new'
  post 'books' => 'books#create'
  get '/index' => 'books#index'
  get '/show' => 'books#show'
  get '/edit' => 'books#edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
