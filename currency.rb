class Currency

  def initialize(amount, currency_code = "")
    @amount = amount.to_s
    @code = currency_code

    self.convert_input
  end

  def convert_input
    symbol_hash = {"$" => "USD", "€" => "EUR", "¥" => "JPY"}

    @amount.each_char do |x|
      if symbol_hash[x]
        @code = symbol_hash[x].to_s
        @amount.tr!(x, "").to_i
      end
    end
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
