Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'articles/runbackgroundjobs' => 'articles#runbackgroundjobs'
  get 'articles/:id/comments'=> 'comments#show', as: :allcomments
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :articles do
    resources :comments do
      member do
        put "like" => "comments#upvote"
      end
      end
  end
  resources :trophies
  resources :votes

  root 'articles#index'


end
