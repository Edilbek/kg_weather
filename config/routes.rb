Rails.application.routes.draw do
  root 'weather#home'
  get '/another_day', to: 'weather#forecast'
end
