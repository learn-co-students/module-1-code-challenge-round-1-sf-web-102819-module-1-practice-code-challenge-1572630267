# require 'pry'

class VentureCapitalist

    attr_reader :name, :total_worth

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
        rich_people = VentureCapitalist.all.select {|people| people.total_worth > 1000000000}
        rich_people.map {|people| people.name}
    end

end


# binding.pry
