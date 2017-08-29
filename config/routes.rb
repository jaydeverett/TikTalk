Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'articles/:id/comments'=> 'comments#show', as: :allcomments
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :articles do
    resources :comments
  end
  resources :trophies
  resources :votes


end
