# frozen_string_literal: true

Rails.application.routes.draw do
  resources :animals, only: %i[index new create]
  root 'animals#index'
end
