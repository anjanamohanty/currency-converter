class Currency

  def initialize(amount, currency_code)
    @amount = amount
    @code = currency_code
  end

  def amount
    return @amount
  end

  def code
    return @code
  end

  def equals?(other)
    if (@amount == other.amount) && (@code == other.code)
      true
    else
      false
    end
  end

  def add(other)
    if @code == other.code
      @amount += other.amount
    else
      raise DifferentCurrencyCodeError
    end
  end

  def subtract(other)
    if @code == other.code
      @amount -= other.amount
    else
      raise DifferentCurrencyCodeError
    end
  end

  def multiply(number)
    @amount = @amount * number
    return self
  end

end

class DifferentCurrencyCodeError < StandardError
  def initialize(msg="Cannot add or subtract currencies with different codes")
    super
  end
end


usd_one = Currency.new(10, :USD)
usd_two = Currency.new(15, :USD)
cad_one = Currency.new(10, :CAD)

puts usd_one.equals?(usd_two)
puts usd_one.equals?(cad_one)
puts usd_one.add(usd_two)

puts usd_one.multiply(5).amount
