require_relative 'startup.rb'
require_relative 'funding_round.rb'
class VentureCapitalist
    attr_accessor :name, :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select {|vc| vc.total_worth > 1000000000}
    end

    def offer_contract(startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end

    def funding_rounds
        FundingRound.all.select {|fr| fr.venture_capitalist == self}
    end

    def portfolio
        self.funding_rounds.map {|fr| fr.startup}.uniq
    end

    def biggest_investment
        self.funding_rounds.max {|a, b| a.investment <=> b.investment}
    end

    def invested(domain)
        total = 0
        self.funding_rounds.each do |fr|
            if fr.domain == domain
                total += fr.investment
            end
        end
        return total
    end

end

