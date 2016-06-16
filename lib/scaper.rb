require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "https://www.amazon.com/dp/B002QYW8LW"
doc = Nokogiri::HTML(open(url))

title = doc.css('span#productTitle').text
title.lstrip!
title.rstrip!

puts "#{title}"
