Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
     get "pastes/recent" => "pastes#recents"
     resources :pastes, only: [:index, :create, :show]
     post "photos" => "photos#upload"
     end
    end
  end
