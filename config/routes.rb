Rails.application.routes.draw do
  get 'stats/index'
  post 'players/create'
  post 'matches/create'
end
