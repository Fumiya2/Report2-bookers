Rails.application.routes.draw do
  get 'bookers' => 'books#new'
  get 'bookers/index'
  get 'bookers/show'
  get 'bookers/edit'
  get 'top' => 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
