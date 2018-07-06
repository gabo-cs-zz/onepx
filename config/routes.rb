# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # get '/images' => 'images#index'
  # get '/images/new' => 'images#new', as: :new_image
  resources :images, only: [:index, :new, :create], path: '/images'
end
