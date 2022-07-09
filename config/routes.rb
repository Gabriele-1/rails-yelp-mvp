Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "restaurants#index" #--> www.restaurants.com
  #resources :restaurants
  #the following will add 2 new routes:
    #Prefix  Verb  URI Pattern                              Controller#Action
    #new_restaurant_review  GET   /restaurants/:restaurant_id/reviews/new  reviews#new
    #   restaurant_reviews  POST  /restaurants/:restaurant_id/reviews      reviews#create
  resources :restaurants do
        resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [:destroy]
end
