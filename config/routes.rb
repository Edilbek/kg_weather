Rails.application.routes.draw do
  root 'weather#home'
  get '/five_day', to: 'weather#forecast'
end
