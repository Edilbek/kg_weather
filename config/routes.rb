Rails.application.routes.draw do
  root "weather#forecast", city: "Bishkek", day: 1
  get '/five_day' , to: 'weather#forecast', as: :five_day
end
