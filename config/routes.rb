Rails.application.routes.draw do
  get 'list/users', to: 'list#users', as: 'list_users'
  get 'list/audios', to: 'list#audios', as: 'list_audios'

  devise_for :users
  resources :audios

  get 'welcome/index'
  root 'welcome#index'

  resources :users do
    resources :audios do
    end
  end

end
