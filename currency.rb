require './errors.rb'

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
        @amount = @amount.tr!(x, "").to_i
      else
        @amount = @amount.to_i
      end
    end
  end

  def amount
    @amount
  end

  def code
    @code
  end

  def ==(other)
    (@amount == other.amount) && (@code == other.code) ? true : false
  end

  def !=(other)
    (@amount != other.amount) && (@code != other.code) ? true : false
  end

  def +(other)
    (@code == other.code) ? Currency.new((@amount += other.amount), @code) : (raise DifferentCurrencyCodeError)
  end

  def -(other)
    (@code == other.code) ? Currency.new((@amount -= other.amount), @code) : (raise DifferentCurrencyCodeError)
  end

  def *(number)
    Currency.new(@amount * number, @code)
  end

end
