Rails.application.routes.draw do
  get '/top' => 'books#top'
  root :to => 'books#top'
  get 'books/new'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  #'books#show'の設定を、bookとして利用できる
  get '/edit' => 'books#edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
