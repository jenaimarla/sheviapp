Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'shop', to: 'pages#shop'
  get 'profile', to: 'pages#profile'


  # get "photos", to: "photos#index"
  # get "photos/new", to: "photos#new", as: :new_photo
  # post "photos", to: "photos#create"
  # get "photos/:id", to: "photos#show", as: :photo
  # get "photos/:id/edit", to: "photos#edit", as: :edit_photo
  # patch "photos/:id", to: "photos#update"
  # delete "photos/:id", to: "photos#destroy"

  resources :photos do
    resources :images, only: [ :index, :new, :create ]
  end

  resources :images, only: [ :show, :edit, :update, :destroy ]

  resources :posters do
    resources :themes, only: [:index, :new, :create ]
  end

  resources :themes, only: [ :show, :edit, :update, :destroy ]

  resources :projects do
    resources :libraries, only: [:index, :new, :create ]
  end

  resources :libraries, only: [ :show, :edit, :update, :destroy ]

  # resources :shops
  resources :charges

end

