Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'restaurants#index'
resources :restaurants

 #inventer les routing CRUD
  #lire tout les resto
# get "restaurants", to: "restaurants#index"
#   #lire un resto
# get "restaurants/:id", to: "restaurants#show"
#   #créer un resto
# get "restaurants", to: "restaurants#new"
# post "restaurants/:id", to: "restaurants#create"
#   #updater un resto
# get "restaurants/:id", to: "restaurants#edit"
# patch "restaurants/:id", to: "restaurants#update"
#   #supprimer un resto
# delete "restaurants/:id", to: "restaurants#destroy"

end
