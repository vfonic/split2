# == Route Map
#
#       Prefix Verb URI Pattern Controller#Action
#         root GET  /           themes#index
# mail_preview      /mail_view  MailPreview
#

Rails.application.routes.draw do
  root to: 'themes#index'
  mount MailPreview => 'mail_view' if Rails.env.development?
  get 'pages/:handle', to: 'pages#show', as: :page
end
