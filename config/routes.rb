TaggitoPay1::Application.routes.draw do
  
  resources :transactions

  resources :vendors

  get '/', to: 'staticpages#home', as:'root'

  get '/login', to: 'sessions#new' 
  post '/sessions', to: 'sessions#create'
  
  get '/signout', to: 'sessions#destroy', as: 'signout'
  
end
