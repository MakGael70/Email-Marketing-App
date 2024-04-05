Rails.application.routes.draw do
  devise_for :users
  root to: 'businesses#index'

  resources :businesses do
    resources :leads, shallow: true, except: %i[index] do
      get 'followup', on: :member
    end
  end
  resources :contacts, only: %i[edit update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
