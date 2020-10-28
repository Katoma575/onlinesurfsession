Rails.application.routes.draw do
  
  devise_for :users
  root 'home#top'
  
  get '/users/sign_out' => 'devise/sessions#destroy'
  get 'home/greeting'=>'home#greeting'
  get 'home/how_to'=>'home#how_to'
  get 'contacts/new'=>'contacts#new'
 
  resource :user, except: [:new, :create,]
  resources :contacts, only: [:new, :create ]
  
  resources :movies do
    resource :favorites, only: [:create, :destroy]
  end
end
