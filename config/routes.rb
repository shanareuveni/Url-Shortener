Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'urls#index'
  post '/create', to:'urls#create', as: :urls
  get '/:id', to:'urls#show'
end
