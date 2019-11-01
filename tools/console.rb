require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


flatiron= Startup.new("Flatiron","Avi", "Education")

facebook = Startup.new("Facebook", "Mark", "Social Media")

instacart = Startup.new("Instacart", "Mark", "Hospitality")

seq = VentureCapitalist.new("Seq", 1000)

gv = VentureCapitalist.new("GV", 1000000000)

pb = VentureCapitalist.new("PB", 1000000000)

# Angel, Pre-Seed, Seed, Series A, Series B, Series C,

angel = FundingRound.new(flatiron, seq, "Angel", 20000)

seed = FundingRound.new(facebook, gv, "Seed", 30000)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line