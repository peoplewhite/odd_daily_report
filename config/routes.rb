Rails.application.routes.draw do
  devise_for :users
  root 'prototype#index'

  resources :diaries do
    #resources :tasks, only: %i(new edit destroy)
    resources :tasks
  end

end
