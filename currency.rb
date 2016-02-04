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
