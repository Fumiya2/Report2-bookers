Rails.application.routes.draw do
  get 'books' => 'bookers#new'
  post 'books' => 'bookers#index'
  get 'bookers/show'
  get 'bookers/edit'
  get 'top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
