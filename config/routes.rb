Rails.application.routes.draw do
  root 'posts#index'

  get 'profiles/show'
  get '/:id', to: 'profiles#show'

  resources :posts

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
