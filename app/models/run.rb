require_relative 'startup'
require_relative 'venture_capitalist'
require_relative 'funding_round'
require 'pry'

bloom = Startup.new("Blooms", "Jessica", "domainy")
veggies = Startup.new("Veggietastic", "Laura", "domainer")

bobby = VentureCapitalist.new("Bobbie Flay", 223)
tyra = VentureCapitalist.new("Tyra Banks", 4324892348238423)

round_1 = FundingRound.new(veggies, tyra, "angel", 500000)

binding.pry