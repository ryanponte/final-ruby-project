require 'nokogiri'
require 'open-uri'
require 'pry'

html = open('http://greatist.com/move/common-yoga-poses')
file = Nokogiri::HTML(html)

def read_difficulties
  difficulties = file.css(".slideshow h3")
  difficulties = difficulties.collect {|difficulty| difficulty.text}
end

def read_titles
  titles = file.css(".title-wrapper h4")
  titles = titles.collect {|title| title.text.strip }
end

def read_instructions
  instructions = file.css(".slide-body p:first-child")
  instructions = instructions.collect {|instruction| instruction.text}
end


instructions = file.css(".slide-body p:first-child").first.text
benefits = file.css(".slide-body p:nth-child(2)").first.text
