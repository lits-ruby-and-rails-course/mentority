Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, path: '/user', controllers: { registrations: "registrations" }

  root 'pages#index'

  resources :profiles, path: '/user'
  resources :courses

  #Added because of big pictures not loading at the landing page instead.
  get 'pages/index' => 'pages#index'
  get 'profile' => 'profiles#show'
  get 'edit' => 'profiles#edit'
  get 'pages/home' => 'pages#home', as: :home
  post 'learnings/apply' => 'learnings#apply'

end
