Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/:id', to: 'rooms#show', as: "room_show"
  post '/room/create', to: 'rooms#create'

  root to: 'rooms#root'

  mount ActionCable.server => '/cable'
end
