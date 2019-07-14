class WeatherController < ApplicationController
  def home

  end

  def forecast
    @city = params[:city]
    puts @day  = params[:day].to_i
    @cities = ["Bishkek", "Talas", "Batket"]
    @days = [1, 2, 3, 4, 5]
    @apixu_forecast = WeatherGemKg::Generator.new("#{@city}", @day,
      WeatherGemKg::Clients::Apixu.new).generate_me
    @dark_forecast  = WeatherGemKg::Generator.new("#{@city}", @day,
      WeatherGemKg::Clients::DarkSky.new).generate_me
  end
end
