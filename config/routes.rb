# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  get 'about', to: 'about#index'
  get 'libraries', to: 'libraries#index'
  get 'libraries/:id', to: 'libraries#show', as: 'library'
  get 'books', to: 'books#index'
  get 'books/:id', to: 'books#show', as: 'book'
  get 'locations', to: 'locations#index'
  get 'locations/:id', to: 'locations#show', as: 'location'
  get 'librarians', to: 'librarians#index'
  get 'librarians/:id', to: 'librarians#show', as: 'librarian'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
