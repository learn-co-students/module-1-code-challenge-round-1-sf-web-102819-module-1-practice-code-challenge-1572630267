class VentureCapitalist

    
    attr_reader :name 
    attr_accessor :total_worth


    @@all = []
    
    #create attributes for a venture capitalist dude
    def initialize(name,total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end


    #I created an array called rich_vc which has all rich people stored in
    def self.tres_commas_club
        rich_vc = @@all.select do |vc|
            vc.total_worth > 1000000000
        end
        rich_vc
    end



    def self.all 
        @@all
    end












end
