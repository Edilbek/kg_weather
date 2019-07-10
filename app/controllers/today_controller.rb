class TodayController < ApplicationController
  def today
    @today_apix = ApiXu::TodayWeather.new("Bishkek")
    @today_dark = DarkSky::TodayWeather.new("42.862,74.557")
  end
  
  def five_day
    five_day = ApiXu::FiveDayWeather.new("Bishkek")
    @five_today_apix = five_day.fiveday_weather
    @five_today_dark = DarkSky::FiveDayWeather.new("42.862,74.557")
  end
end
