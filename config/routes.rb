Rails.application.routes.draw do

  resources :sails do
    collection {post :import}
  end

  root to: "sails#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
