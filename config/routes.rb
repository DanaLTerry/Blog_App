Rails.application.routes.draw do
  get 'comments/index'
  root to: 'posts#index'
  resources :posts do
    resources :comments 
  end
 
end