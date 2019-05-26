Rails.application.routes.draw do
  root to: 'characters#index'
  resources :characters do
    resources :powers
  end
end
