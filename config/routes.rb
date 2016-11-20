Rails.application.routes.draw do
  devise_for :users
  root 'prototype#index'

  resources :diaries
  resources :tasks

end
