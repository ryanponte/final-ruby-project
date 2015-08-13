class Workout
  attr_accessor :input, :sequence, :yoga_hash

  def initialize
    puts "************************"
    puts "*** Welcome to Yoga! ***"
    puts "************************"
    @sequence = []
  end

  def create_sequence(scraper)
    level = get_level
    sequence_length?
    input.times {(@sequence << scraper[level][rand(0..9)])}
  end

  def get_level
    puts "*======================================================*"
    puts "| B for Beginner | I for Intermediate | A for Advanced |"
    puts "*======================================================*"
    answer = gets.chomp.downcase
    case answer
    when "b"
      level = :beginner
    when "i"
      level = :intermediate
    when "a"
      level = :advanced
    else
      get_level
    end
  end

  def sequence_length?
    puts "How many exercises?"
    @input = gets.chomp.to_i
    if @input == 0
      sequence_length?
    else
      @input
    end
  end

  def display_exercise(exercise)
      puts exercise[:title]
      puts exercise[:instruction]
  end

  def return_instructions(exercise)
    exercise[:instruction]
  end

  def return_title(exercise)
    exercise[:title]
  end

  def iterate_sequence
    @sequence.each do |exercise|
      display_exercise(exercise)
      choice = get_input
      until choice == "n"
        case choice
        when "b"
          puts "Benefits"
          display_benefits(exercise)
          choice = get_input
        when "e"
          puts "ERMAHGERD!!!11!1!!"
          ermahgerd(exercise)
          choice = get_input
        when "d"
          puts "so dogeify. wow"
          dogeify(exercise)
          choice = get_input
        when "y"
          yoda
          choice = get_input
        when "p"
          puts "Igpay Atinlay"
          pig_latin(exercise)
          choice = get_input
        when "l"
          puts "i can haz lolspeak?"
          lolcat(exercise)
          choice = get_input
        when "x"
          exit
        end
      end
      puts "Next"
      next
    end
  end

  def get_input
    puts "*=================================================================*"
    puts "| N for Next | B for Benefits  | E for ERMAHGERD | L for LOLspeak |"
    puts "*=================================================================*"
    puts "| Y for Yoda | P for Pig Latin | D for Dogeify   | X for Exit     |"
    puts "*=================================================================*"
    puts "Enter a command:"
    gets.chomp.downcase
  end

  def display_benefits(exercise)
    puts exercise[:title]
    puts exercise[:benefit]
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
