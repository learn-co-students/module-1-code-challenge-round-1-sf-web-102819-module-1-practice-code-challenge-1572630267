# require 'pry'

class Startup

    #attr_accessor :name
    attr_accessor :founder, :domain, :name

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end
 
    def pivot(domain, name)
        @domain = domain
        @name = name
    end
    
    def self.all
        @@all
    end

    def self.find_by_founder(founder_name)
        founders_obj = Startup.all.find {|startup| startup.founder == founder_name}
    end

    def self.domains
        domain_names = Startup.all.map {|startup| startup.domain}
    end

    def sign_contract(venture_capitalist, type, amount)
        FundingRound.new(self, venture_capitalist, type, amount)
    end

    def funding_rounds
        startup_rounds = FundingRound.all.map {|rounds| rounds.startup == self}
        startup_rounds.length
    end

    def total_funds
        total = 0
        startup_rounds = FundingRound.all.select {|rounds| rounds.startup == self}
        startup_rounds.each do |round|
            round[]
        total
    end

end



# binding.pry
