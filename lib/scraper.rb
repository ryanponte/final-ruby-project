require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  html = open('http://greatist.com/move/common-yoga-poses')
  @@file = Nokogiri::HTML(html)

  # def read_levels
  #   levels = file.css(".slideshow h3")
  #   levels = levels.collect {|levels| levels.text}
  # end

  def self.read_titles
    titles = @@file.css(".title-wrapper h4")
    titles = titles.collect {|title| title.text.strip.sub(/[0-9]+\.\s/, "")}
  end

  def self.read_instructions
    instructions = @@file.css(".slide-body p:first-child")
    instructions = instructions.collect {|instruction| instruction.text}
  end

  def self.read_benefits
    benefits = @@file.css(".slide-body p:nth-child(2)")
    benefits = benefits.collect {|benefit| benefit.text}
  end

  def self.yoga_hash
    yoga_hash = {
      :beginner => [
        {title: self.read_titles[0], instructions: self.read_instructions[0], benefits: self.read_benefits[0]},
        {title: self.read_titles[1], instructions: self.read_instructions[1], benefits: self.read_benefits[1]},
        {title: self.read_titles[2], instructions: self.read_instructions[2], benefits: self.read_benefits[2]},
        {title: self.read_titles[3], instructions: self.read_instructions[3], benefits: self.read_benefits[3]},
        {title: self.read_titles[4], instructions: self.read_instructions[4], benefits: self.read_benefits[4]},
        {title: self.read_titles[5], instructions: self.read_instructions[5], benefits: self.read_benefits[5]},
        {title: self.read_titles[6], instructions: self.read_instructions[6], benefits: self.read_benefits[6]},
        {title: self.read_titles[7], instructions: self.read_instructions[7], benefits: self.read_benefits[7]},
        {title: self.read_titles[8], instructions: self.read_instructions[8], benefits: self.read_benefits[8]},
        {title: self.read_titles[9], instructions: self.read_instructions[9], benefits: self.read_benefits[9]},
      ],
      intermediate: [
        {title: self.read_titles[10], instructions: self.read_instructions[10], benefits: self.read_benefits[10]},
        {title: self.read_titles[11], instructions: self.read_instructions[11], benefits: self.read_benefits[11]},
        {title: self.read_titles[12], instructions: self.read_instructions[12], benefits: self.read_benefits[12]},
        {title: self.read_titles[13], instructions: self.read_instructions[13], benefits: self.read_benefits[13]},
        {title: self.read_titles[14], instructions: self.read_instructions[14], benefits: self.read_benefits[14]},
        {title: self.read_titles[15], instructions: self.read_instructions[15], benefits: self.read_benefits[15]},
        {title: self.read_titles[16], instructions: self.read_instructions[16], benefits: self.read_benefits[16]},
        {title: self.read_titles[17], instructions: self.read_instructions[17], benefits: self.read_benefits[17]},
        {title: self.read_titles[18], instructions: self.read_instructions[18], benefits: self.read_benefits[18]},
        {title: self.read_titles[19], instructions: self.read_instructions[19], benefits: self.read_benefits[19]},
      ],
      advanced: [
        {title: self.read_titles[20], instructions: self.read_instructions[20], benefits: self.read_benefits[20]},
        {title: self.read_titles[21], instructions: self.read_instructions[21], benefits: self.read_benefits[21]},
        {title: self.read_titles[22], instructions: self.read_instructions[22], benefits: self.read_benefits[22]},
        {title: self.read_titles[23], instructions: self.read_instructions[23], benefits: self.read_benefits[23]},
        {title: self.read_titles[24], instructions: self.read_instructions[24], benefits: self.read_benefits[24]},
        {title: self.read_titles[25], instructions: self.read_instructions[25], benefits: self.read_benefits[25]},
        {title: self.read_titles[26], instructions: self.read_instructions[26], benefits: self.read_benefits[26]},
        {title: self.read_titles[27], instructions: self.read_instructions[27], benefits: self.read_benefits[27]},
        {title: self.read_titles[28], instructions: self.read_instructions[28], benefits: self.read_benefits[28]},
        {title: self.read_titles[29], instructions: self.read_instructions[29], benefits: self.read_benefits[29]},
      ]
    }
  end

  puts yoga_hash[:beginner].first

  # def get_beginner_data(arr)
  #   arr[0..9]
  # end
  #
  # def get_intermediate_data(arr)
  #   arr[10..19]
  # end
  #
  # def get_advanced_data(arr)
  #   arr[20..29]
  # end
end
