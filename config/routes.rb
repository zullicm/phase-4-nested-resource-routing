Rails.application.routes.draw do
  resources :dog_houses, only: [:show]
  resources :reviews, only: [:show, :index, :create]
  get '/dog_houses/:dog_house_id/reviews', to: 'dog_houses#reviews_index'
  get '/dog_houses/:dog_house_id/reviews/:id', to: 'dog_houses#review'
end
