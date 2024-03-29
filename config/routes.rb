# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'pins#index'
  resources :pins do
    member do
      put 'Like', to: 'pins#upvote'
    end
  end
end
