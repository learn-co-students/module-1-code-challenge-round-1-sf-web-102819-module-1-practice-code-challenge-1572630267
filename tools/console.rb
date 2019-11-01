require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
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
  end
  
  #might work
  def self.domains
    # binding.pry
    arr = Startup.all.select { |startup| startup.domain }
    arr.uniq
  end
  
end


ET = Startup.new("Eagle Tech", "joe lo", "tech")
CCC = Startup.new("CCC", "sel li", "customer service")
0 #leave this here to ensure binding.pry isn't the last line