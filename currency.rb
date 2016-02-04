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
