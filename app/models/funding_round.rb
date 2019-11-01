# require_relative 'startup'
# require_relative 'venture_capitalist'
# require 'pry'

class FundingRound

    attr_accessor :type, :investment, :startup, :venture_capitalist
    # attr_reader :startup, :venture_capitalist

    @@all = []

    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        @investment = investment
        @@all << self
    end

    def self.all
        @@all
    end

end



