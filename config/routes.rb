Rails.application.routes.draw do
  devise_for :users
  resources :audios
  get 'welcome/index'
  root 'welcome#index'

end
