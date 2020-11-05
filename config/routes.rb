Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' => 'sessions#welcome'
  get '/player/login' => 'sessions#playerlogin'
  get '/dm/login' => 'sessions#dmlogin'
  post '/player/login' => 'sessions#playercreate'
  post '/dm/login' => 'sessions#dmcreate'
  get '/player/signup' => 'players#signup'
  get '/dm/signup' => 'dms#signup'
  delete '/player/logout' => 'sessions#playerdestroy'
  delete '/dm/logout' => 'sessions#dmdestroy'

  resources :characters, :stories, :games, :players, :dms
end
