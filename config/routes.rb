Rails.application.routes.draw do
  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: 'public' do
    resource :customers do
    end
  end
  
  namespace :admin do
    resources :customers
  end
  
end
