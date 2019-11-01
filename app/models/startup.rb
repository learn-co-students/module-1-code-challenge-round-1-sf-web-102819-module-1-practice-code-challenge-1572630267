class Startup

    attr_reader :name
    attr_accessor :domain,:founder


    @@all = []

    def initialize(name,founder,domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end


    def pivot(domain,name)
        @domain = domain
        @name = name
    end

    #pass in a name and match it with first startup founder who's name matches
    def self.find_by_founder(founder_name)
        @@all.select do |startup_founder_names|
            startup_founder_names.founder == founder_name
        end
    end

    #return every Startup domain
    def self.domains
        @@all.map do |startup|
            startup.domain
        end
    end




    def sign_contract (venture_capitalist,investment,amount)
        new_fr = FundingRound.new(self, "Yoham", "Seed",1000)
    end

    #see how many times a startup has been funded. i.e. facebook
    def num_funding_rounds
        number = FundingRound.all.each do |fr|
            fr == self
        end
        number.count
    end

    #method is returning all of investments for particular startup, I haven't summed them together yet
    def total_funds
        investments = FundingRound.all.select do |fr|
            fr.startup == self
        end
        total_inv = investments.map do |invest|
            invest.investment
        end
    end


    #WORK ON THIS
    def investors
        all_vc = FundingRound.all.select do |fr| #RETURNING ALL VC'S SUCCESFFULY
            fr.venture_capitalist
        end
        all_vc.map do |vc|
            vc
        end
    end


    #all the startups. class method
    def self.all 
        @@all
    end















end
