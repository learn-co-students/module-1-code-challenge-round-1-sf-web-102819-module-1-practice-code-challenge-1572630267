class FundingRound
  attr_reader :startup, :venture_capitalist, :type, :investment

  @@all = []

  def initialize(startup, venture_capitalist)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type
    @investment
  end

  def type(amount)
    @type = amount
    @type
  end

  def investment(amount)
    if amount < 0
      "You have to give the startup some money!"
    else
      @investment = amount.to_f
    end
    @investment
  end

  def self.all
    @@all
  end

end
