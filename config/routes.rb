Rails.application.routes.draw do
  devise_for :users
  root 'prototype#index'

  resources :tasks
  resources :diaries

end
