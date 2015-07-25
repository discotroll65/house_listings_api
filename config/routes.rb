Rails.application.routes.draw do
  root 'listings#root'
  resources :listings, only:[:index], defaults: {format: :json}
end
