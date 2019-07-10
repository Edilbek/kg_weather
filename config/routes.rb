Rails.application.routes.draw do
  root to: "today#today"
  get 'five_day', to: :five_day, controller: 'today'
  get 'talas_weather', to: :talas_weather, controller: 'today'
  get 'batken_weather', to: :batken_weather, controller: 'today'
  get 'fiveday_batken_weather', to: :fiveday_batken_weather, controller: 'today'
  get 'fiveday_talas_weather', to: :fiveday_talas_weather, controller: 'today'
end
