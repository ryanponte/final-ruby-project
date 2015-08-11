require_relative 'scraper'
require 'pry'

class Workout
  attr_reader :workout, :input

  def initialize
    @workout = []
  end

  def create_workout
    workout_length?
    input.times {@workout << Scraper.yoga_hash[:beginner][rand(0..9)]}
    @workout
  end

  def workout_length?
    puts "How many exercises?"
    @input = gets.chomp.to_i
  end

  def print_exercise(exercise)
      puts exercise[:title]
      puts exercise[:instructions]
  end

  def iterate_workout
    @workout.each do |exercise|
      print_exercise(exercise)
      puts "Press N to continue."
      command = gets.chomp.downcase
      puts "Next" if input == "n"
    end
  end
end

sequence = Workout.new
sequence.create_workout
binding.pry

# @workout.each do |exercise|
# puts 'Press "N" to continue.'
# press = gets.input.downcase.chomp
# if press == "n"
#
# end
