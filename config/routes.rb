# frozen_string_literal: true

Rails.application.routes.draw do
  root 'libraries#index'
  get 'parkings/index'
  get 'parkings/show'
  get 'locations/index'
  get 'locations/show'
  get 'libraries/index'
  get 'libraries/show'
  get 'librarians/index'
  get 'librarians/show'
  get 'books/index'
  get 'books/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
