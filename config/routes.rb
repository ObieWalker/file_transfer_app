Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :documents do get 'download', on: :member end
  resources :documents, only: [:index, :new, :create, :destroy]   
  root "documents#index"  
end
