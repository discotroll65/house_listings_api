Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :listings, only:[:index]
  end
end
