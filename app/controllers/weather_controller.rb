class WeatherController < ApplicationController
  def forecast
    @city = params[:city]
    day  = params[:day].to_i
    @apixu_forecast = WeatherGemKg::Generator.new("#{@city}", day,
      WeatherGemKg::Clients::Apixu.new).generate_me
    @dark_forecast  = WeatherGemKg::Generator.new("#{@city}", day,
      WeatherGemKg::Clients::DarkSky.new).generate_me
  end
end
