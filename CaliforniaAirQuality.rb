require 'rubygems'
require 'nokogiri'
require 'open-uri'

# Change for your ZIP
page = Nokogiri::HTML(open("http://www.airnow.gov/?action=airnow.local_city&zipcode=94102&submit=Go"))

# Get the current air quality
puts page.css('table.AQData td.AQDataLg').text
