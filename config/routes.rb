Rails.application.routes.draw do
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'homes#top'
  get '/home/about' => 'homes#about'

  scope module: 'public' do
    resource :customers do
      get 'my_page' => 'customers#show'
    end
    resources :addresses
    resources :orders, only:[:new, :create, :index, :show]
    resources :cart_items, only:[:index, :update, :create, :destroy]
    resources :items, only:[:index, :show]
    post "orders/thanks" => "orders#thanks"
    get "orders/complete" => "orders#complete"
    delete "cart_items" => "cart_items#destroy_all"
  end

  namespace :admin do
    resources :customers
    resources :items, except: [:edit]
    resources :types, only:[:index, :update, :create, :edit]
    resources :orders, only:[:index, :show]
  end
end
