Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/tags', to: 'tags#index'
  get '/tags/:id' => 'tags#show', as: :tag

  get 'destinations/:id' => 'destination#show', as: :destination
  
  get '/destinations/:id/edit' => 'destination#edit', as: :edit_destination
  patch '/destinations/:id' => 'destination#update'
  root 'tags#index'
end