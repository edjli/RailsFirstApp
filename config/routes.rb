Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' } , controllers: { registrations: "user_registrations" }


  resources :users
  resources :products do
    resources :comments
  end
  
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'simple_pages/landing_page'
  get 'simple_pages/login'
  post 'simple_pages/thank_you'
  # get 'simple_pages#landing_page'

  root 'products#index'

  resources :orders, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
