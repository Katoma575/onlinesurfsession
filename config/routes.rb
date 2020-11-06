Rails.application.routes.draw do
  
  root 'homes#index'
  
  devise_for :users
  post '/homes/guest_sign_in', to: 'homes#new_guest'
  
  get 'homes/greeting'=>'homes#greeting'
  get 'homes/how_to'=>'homes#how_to'
  get 'contacts/new'=>'contacts#new'
  
  resource :user, except: [:new, :create,]
  resources :contacts, only: [:new, :create ]
  
  resources :movies do
    resource :favorites, only: [:create, :destroy]
  end
end
