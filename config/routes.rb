Rails.application.routes.draw do
  devise_for :users
  root 'prototype#index'

  resources :diaries do
    resources :tasks, controller: 'diaries/tasks'
  end

  resources :tasks do
    member do
      put 'check'
    end
  end


    #namespace :admin do
    # resources :tasks
    #resources :diaries
    #end

  end
