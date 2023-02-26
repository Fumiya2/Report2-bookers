Rails.application.routes.draw do
  get 'books/new'
  resources :books
  get 'bookers/index'
  get 'bookers/show'
  get 'bookers/edit'
  get 'top' => 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
