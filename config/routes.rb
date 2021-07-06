Rails.application.routes.draw do
  resources :products
  get 'users/list_users'
  get 'users/show_new_template'# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users/display_other_template'
  get "users/new_user"

  post  "users/create_user"
end
