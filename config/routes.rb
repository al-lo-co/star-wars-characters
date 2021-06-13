Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :characters, only: [:index, :show, :edit, :update, :destroy]
  root 'characters#index'
end
