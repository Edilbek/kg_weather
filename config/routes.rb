Rails.application.routes.draw do
  root to: "today#today"
  get 'five_day', to: :five_day, controller: 'today'
end
