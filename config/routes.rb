Rails.application.routes.draw do
  resources :users
  resources :tags
  resources :posts do
    resources :comments
  end

  mount ActionCable.server => '/cable'
  
  # ws::localhost300/cable
end
