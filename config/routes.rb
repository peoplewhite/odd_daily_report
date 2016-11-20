Rails.application.routes.draw do
  devise_for :users
  root 'prototype#index'

  resources :diaries do
    resources :tasks
  end
  # resources :tasks

end
