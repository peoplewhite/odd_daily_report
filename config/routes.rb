Rails.application.routes.draw do
  devise_for :users
  root 'prototype#index'

  resources :tasks
  get 'diary' => 'diaries#index'
end
