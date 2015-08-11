require 'nokogiri'
require 'open-uri'
require 'pry'

html = open('http://greatist.com/move/common-yoga-poses')
file = Nokogiri::HTML(html)

difficulty = file.css(".slideshow h3")
title = file.css(".title-wrapper h4").first.text.strip
instructions = file.css(".slide-body p:first-child").first.text
benefits = file.css(".slide-body p:nth-child(2)").first.text
