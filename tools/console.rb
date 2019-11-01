require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end





s1 = Startup.new("fb","mark","fb.com")
s2 = Startup.new("google","joe","google.com")
s3 = Startup.new("twitter","allen","twitter.com")


vc1 = VentureCapitalist.new("Rich John", 10000000000)
vc2 = VentureCapitalist.new("Rich Homie", 20000000000)
vc3 = VentureCapitalist.new("Poor Man", 100)


fr1 = FundingRound.new(s1,vc1,"Angel",100)
fr2 = FundingRound.new(s1,vc2,"Seed",100)
fr3 = FundingRound.new(s3,vc3,"Seed",1)















binding.pry
0 #leave this here to ensure binding.pry isn't the last line