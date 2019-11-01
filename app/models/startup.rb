require_relative 'venture_capitalist.rb'
require_relative 'funding_round.rb'

class Startup
    attr_accessor :name
    attr_reader :domain, :founder

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def pivot(domain, name)
        self.name = name
        @domain = domain
    end

    def self.all
        @@all
    end

    def self.find_by_founder(founder)
        self.all.find {|startup| startup.founder == founder}
    end

    def self.domains
        self.all.map {|startup| startup.domain}.uniq
    end

    def sign_contract(venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end

    def funding_rounds
        FundingRound.all.select {|fr| fr.startup == self}
    end

    def num_funding_rounds
        self.funding_rounds.size
    end

    def total_funds
        total = 0
        self.funding_rounds.each do |fr|
                total += fr.investment
        end
        return total
    end

    def investors
        self.funding_rounds.map {|fr| fr.venture_capitalist}.uniq
    end

    def big_investors
        self.investors.select {|vc| vc.total_worth > 1000000000}
    end

end

