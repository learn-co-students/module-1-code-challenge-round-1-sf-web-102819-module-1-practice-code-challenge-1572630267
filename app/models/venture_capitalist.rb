class VentureCapitalist
    attr_reader :name, :total_worth

    @@all = []
    @@tres_commas_club = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
        if total_worth == 1000000000
            @@tres_commas_club << self
        end
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        @@tres_commas_club
    end

end
