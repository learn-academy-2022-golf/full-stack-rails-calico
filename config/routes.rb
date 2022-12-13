Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "post#index"
  get 'posts' => 'post#index', as: 'posts'
  get 'posts/:id' => 'post#show', as: 'post'

end