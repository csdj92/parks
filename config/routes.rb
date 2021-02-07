Rails.application.routes.draw do
  resources :campgrounds
resources :parks
get :search, controller: :parks
end
