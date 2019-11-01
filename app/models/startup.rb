require "pry"
class Startup

  @@all = []

  attr_reader :founder
  attr_accessor :name, :domain

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def pivot(domain, name)
    @name = name
    @domain = domain
  end

  def self.all
    @@all
  end

  #might need to fix
  def self.find_by_founder(founder_name)
    arr = Startup.all.select { |startup| startup.founder.name == self.name }
    arr.first
    binding.pry
  end

  #might work
  def self.domains
    arr = Startup.all.select { |startup| startup.domain }
    arr.uniq
  end

  def sign_contract(venture_cap_obj, type_of_invest, invested_amount)
    funding_round = FundingRound.new(self, venture_cap_obj)
    #how do i asscoicate?????????????
  end

  def num_funding_rounds
    FundingRound.all.length
  end

  def total_funds
    arr = Startup.all.select { |startup| startup == self } #????????
    arr.first.investment #???????????????
  end

  #could possbily work
  def investor
    arr = VentureCapitalist.all.select { |firm| firm.startup == self }
    arr.uniq
  end

  def big_investors
    arr = VentureCapitalist.all.select do |firm| 
      firm.startup == self && VentureCapitalist.tres_commas_club.include?(firm)
    end
    arr.uniq
  end


end
