Rails.application.routes.draw do
  root 'homes#index'
  get 'homes/index'
  get 'homes/create'
  get 'homes/show/:id' => 'homes#show'
  get 'homes/edit/:id' => 'homes#edit'
  get 'homes/update/:id' => 'homes#update'
  get 'homes/delete/:id' => 'homes#delete'
  get 'homes/delete_if'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
