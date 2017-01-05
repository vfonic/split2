# == Route Map
#
#       Prefix Verb URI Pattern Controller#Action
# mail_preview      /mail_view  MailPreview
#

Rails.application.routes.draw do
  # root to: 'visitors#index'
  # devise_for :users
  mount MailPreview => 'mail_view' if Rails.env.development?
end
