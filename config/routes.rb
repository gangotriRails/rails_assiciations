Rails.application.routes.draw do
  devise_for :users
  get 'admin/login'
  post   'admin/login'   => 'admin#create'
  post 'admin/logout' => 'admin#destroy'
  get 'admin/logout'
  resources :books
  resources :authors
  resources :students
  resources :teachers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
