#test page

require_relative 'startup.rb'
require_relative 'funding_round.rb'
require_relative 'venture_capitalist.rb'

dawns_startup = Startup.new("dawn's", "dawn", "software")
collins_startup = Startup.new("collin's", "collin", "food")
tacos_startup = Startup.new("taco's", "taco", "biology")
bob = VentureCapitalist.new("Bob", 12345678910)
johnny = VentureCapitalist.new("Johnny", 1000)
steven = VentureCapitalist.new("Steven", 9999999999)

funds1 = FundingRound.new(dawns_startup, bob, "A", 100000.00)
funds2 = FundingRound.new(dawns_startup, bob, "B", 500000.00)
funds3 =  FundingRound.new(dawns_startup, johnny, "C", 100000.00)

tacos_startup.sign_contract(bob, "A", 35000000.00)

steven.offer_contract(collins_startup, "A", 450000)

p bob.invested("software")

