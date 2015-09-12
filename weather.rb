require 'rubygems'
require 'weather-underground'

=begin Get user's zip code

puts "Enter your zip code"

location = gets.chomp

=end 


forecast = WeatherUnderground::Base.new

# Using static zip code until the rest of it works

location = '98119'

weather = forecast.TextForecast(location)

puts weather.inspect

# weather.inspect gives lots of info! I just can't figure out how to pull out pieces of it.