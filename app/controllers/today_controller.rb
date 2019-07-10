class TodayController < ApplicationController
  def today
    @today_apix = ApiXu::TodayWeather.new("Bishkek")
    @today_dark = DarkSky::TodayWeather.new("42.862,74.557")
  end
  
  def five_day
    five_day = ApiXu::FiveDayWeather.new("Bishkek")
    @five_today_apix = five_day.fiveday_weather

    @today_apix = ApiXu::TodayWeather.new("Bishkek")
    @today_dark = DarkSky::TodayWeather.new("42.862,74.557")
    
    @five_day_d = DarkSky::FiveDayWeather.new("42.862,74.557")
    @five_today_dark = @five_day_d.fiveday_weather
  end

  def batken_weather
    @today_apix = ApiXu::TodayWeather.new("Batken")
    @today_dark = DarkSky::TodayWeather.new("40.06259,70.81939")
  end

  def talas_weather
    @today_apix = ApiXu::TodayWeather.new("Talas")
    @today_dark = DarkSky::TodayWeather.new("42.52277,72.24274")
  end

  def fiveday_batken_weather
    five_day = ApiXu::FiveDayWeather.new("Batken")
    @five_today_apix = five_day.fiveday_weather

    @today_apix = ApiXu::TodayWeather.new("Batken")
    @today_dark = DarkSky::TodayWeather.new("40.06259,70.81939")
    
    @five_day_d = DarkSky::FiveDayWeather.new("40.06259,70.81939")
    @five_today_dark = @five_day_d.fiveday_weather
  end

  def fiveday_talas_weather
    five_day = ApiXu::FiveDayWeather.new("Talas")
    @five_today_apix = five_day.fiveday_weather

    @today_apix = ApiXu::TodayWeather.new("Talas")
    @today_dark = DarkSky::TodayWeather.new("42.52277,72.24274")
    
    @five_day_d = DarkSky::FiveDayWeather.new("42.52277,72.24274")
    @five_today_dark = @five_day_d.fiveday_weather
  end
end
