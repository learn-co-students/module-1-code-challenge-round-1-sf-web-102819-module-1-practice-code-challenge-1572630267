class FundingRound
attr_reader :startup, :venture_capitalist, :type, :portfolio 
attr_accessor :investment  
@@all = []
    
    def initialize(startup)
        @startup = startup
    end

    def investment
        if @investment  # must be float and not negative
        end
    end

end
