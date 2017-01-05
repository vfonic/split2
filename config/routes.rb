Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
mount MailPreview => 'mail_view' if Rails.env.development?end
