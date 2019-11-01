class Startup
    attr_reader :founder
    attr_accessor :name, :domain

    @@all = [] 
    @@domains = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
        @@domains << domain
        @num_funding_rounds = 0
        @total_funds = 0 
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end

    def self.all
        @@all
    end

    # def self.find_by_founder()
    #     self.all.each do |x|
    #         x
    #     end
    # end

    def self.domains
        @@domains
    end

#     Startup#sign_contract
    # given a venture capitalist object, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.

    def sign_contract(venture_capitalist_obj, investment_type, amount_invested)
        FundingRound.new(self, venture_capitalist_obj, investment_type, amount_invested)
    end


    # Startup#num_funding_rounds
# Returns the total number of funding rounds that the startup has gotten

    def num_funding_rounds
        @num_funding_rounds += 1
    end

#     Startup#total_funds
# Returns the total sum of investments that the startup has gotten
    def total_funds
        self.FundingRound

    end
end
