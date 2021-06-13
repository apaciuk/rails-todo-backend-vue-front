Rails.application.routes.draw do
  devise_for :users


  namespace :api, defaults: { format: :json } do
    namespace :v1 do
     resources :todos
      devise_scope :user do
        post "sign_up", to: "registrations#create", controller: :signup, action: :create
        post "sign_in", to: "sessions#create", controller: :signin, action: :create
        delete "log_out", to: "sessions#destroy", controller: :signin, action: :destroy
    end
    end
  end
end
