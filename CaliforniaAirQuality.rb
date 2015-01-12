require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("http://www.airnow.gov/?action=airnow.local_city&zipcode=94102&submit=Go"))

# Get the current air quality
puts page.css('table.AQData td.AQDataPollDetails a').text
