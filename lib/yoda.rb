#require_relative '../config/environment.rb'

require 'yodaism'

  class YodaQuote
    include Yodaism

    attr_accessor :yoda_quote

    def initialize
      @yoda_quote = Yodaism.quote
    end

    def random
      @yoda_quote.random
    end

    def ascii
      @yoda_quote.ascii
    end
  end
