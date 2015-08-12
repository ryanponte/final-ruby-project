# require_relative '../config/environment.rb'
# require 'rubygems'
# require 'pry'
# require 'ermahgerd'
# require 'dogeify/all'
# require 'pig_latin'
# require 'moar-lolspeak'
# require_relative 'scraper'
# require_relative 'yoda'

class Workout
  attr_reader :input, :sequence

  def initialize
    puts "************************"
    puts "*** Welcome to Yoga! ***"
    puts "************************"
    @sequence = []
  end

  def create_sequence
    level = get_level
    sequence_length?
    input.times {@sequence << Scraper.yoga_hash[level][rand(0..9)]}
  end

  def get_level
    puts "B for Beginner | I for Intermediate | A for Advanced"
    answer = gets.chomp.downcase
    case answer
    when "b"
      level = :beginner
    when "i"
      level = :intermediate
    when "a"
      level = :advanced
    end
  end

  def sequence_length?
    puts "How many exercises?"
    @input = gets.chomp.to_i
  end

  def display_exercise(exercise)
      puts exercise[:title]
      puts exercise[:instructions]
  end

  def return_instructions(exercise)
    exercise[:instructions]
  end

  def return_title(exercise)
    exercise[:title]
  end

  def iterate_sequence
    @sequence.each do |exercise|
      choice = get_input
      case choice
      when "n"
        puts "Next"
        display_exercise(exercise)
      when "b"
        puts "Benefits"
        display_benefits(exercise)
      when "e"
        puts "ERMAHGERD!!!11!1!!"
        ermahgerd(exercise)
      when "d"
        puts "wow dogeify!"
        dogeify(exercise)
      when "y"
        yoda
      when "p"
        puts "Igpay Atinlay"
        pig_latin(exercise)
      when "l"
        puts "i can haz lolspeak?"
        lolcat(exercise)
      when "x"
        exit
      end
    end
  end

  def get_input
    puts "| N for Next | B for Benefits  | E for ERMAHGERD | L for LOLspeak |"
    puts "| Y for Yoda | P for Pig Latin | D for Dogeify   | X for Exit     |"
    puts "Enter a command:"
    gets.chomp.downcase
  end

  def display_benefits(exercise)
    puts exercise[:benefits]
  end

  def ermahgerd(exercise)
    puts Ermahgerd.translate(return_title(exercise))
    puts Ermahgerd.translate(return_instructions(exercise))
  end

  def dogeify(exercise)
    puts return_title(exercise).dogeify
    puts return_instructions(exercise).dogeify
  end

  def pig_latin(exercise)
    puts PigLatin.translate(return_title(exercise))
    puts PigLatin.translate(return_instructions(exercise))
  end

  def yoda
    example = YodaQuote.new
    puts example.ascii
    puts example.random
  end

  def lolcat(exercise)
    puts Moar::Lolspeak.translate(return_title(exercise)).downcase
    puts Moar::Lolspeak.translate(return_instructions(exercise)).downcase
  end

end
