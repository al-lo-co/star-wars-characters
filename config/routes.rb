Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :characters, only: [:index, :show, :edit, :update, :destroy]
  root 'characters#index'
  get :favorite, to: 'characters#fav'
  get :request_destroy, to: 'characters#request_destroy'
  get :request_update, to: 'characters#request_update'
end
