Rails.application.routes.draw do
  
  root 'homes#top'
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get '/users/sign_out' => 'devise/sessions#destroy'
    get 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  

  get '/users/sign_out' => 'devise/sessions#destroy'
  get 'homes/greeting'=>'homes#greeting'
  get 'homes/how_to'=>'homes#how_to'
  get 'contacts/new'=>'contacts#new'
  
 
  resource :user, except: [:new, :create,]
  resources :contacts, only: [:new, :create ]
  
  resources :movies do
    resource :favorites, only: [:create, :destroy]
  end
end
