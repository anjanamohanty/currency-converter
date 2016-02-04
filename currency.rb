class Currency

  def initialize(amount, currency_code)
    @amount = amount
    @code = code
  end

  def amount
    @amount
  end

  def code
    @code
  end

  def equals?(other)
    if (@amount == other.amount) && (@code == other.code)
      true
    else
      false
    end
  end

end


usd_one = Currency.new(10, :USD)
usd_two = Currency.new(15, :USD)

puts usd_one.equals?(usd_two)
