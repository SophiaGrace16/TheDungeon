Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => 'sessions#welcome'
  get '/player/login' => 'sessions#playernew'
  get '/dm/login' => 'sessions#dmnew'
  get '/player/login' => 'sessions#playercreate'
  get '/dm/login' => 'sessions#dmcreate'
  get '/player/signup' => 'players#new'
  get '/dm/signup' => 'dms#new'

  resources :characters, :stories, :games
end
