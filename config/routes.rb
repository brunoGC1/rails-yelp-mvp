Rails.application.routes.draw do
  # get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # list the tasks

  # Só lembrando, se fizer resoucer :restaurant ele já cria todas as 7 actions pra restaurants
  get 'restaurants', to: 'restaurants#index'

  # show create restaurant
  get 'restaurants/new', to: 'restaurants#new'

  # show edit the restaurant form
  get 'restaurants/:id/edit', to: 'restaurants#edit'

  # list one restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  # create the restaurant
  post 'restaurants', to: 'restaurants#create'

  # update the restaurant
  patch 'restaurants/:id', to: 'restaurants#update'

  # Delete the restaurant
  delete 'restaurants/:id', to: 'restaurants#destroy', as: 'delete'

  # show create reviews
  get 'reviews/new', to: 'reviews#new'

  # show create restaurant
  get 'reviews/new', to: 'reviews#new'

end
