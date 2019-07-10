class TodayController < ApplicationController
  def today
    @today_apix = ApiXu::TodayWeather.new("Bishkek")
  end
  
  def five_day
    
  end
end
