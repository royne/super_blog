Rails.application.routes.draw do
  root 'posts#index'

  get 'profiles/show'
  get '/:id', to: 'profiles#show'

  devise_for :users

  resources :posts do
    resources :comments, only: [:create]    
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
