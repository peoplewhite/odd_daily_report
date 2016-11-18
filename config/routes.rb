Rails.application.routes.draw do
  devise_for :users
  root 'prototype#index'

  get 'task' => 'tasks#index'
end
