Rails.application.routes.draw do
  get 'post_images/new'
  get 'post_images/index'
  get 'post_images/show'
  get 'post_images/edit'
  resources :books
  root to: 'homes#top'


 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
