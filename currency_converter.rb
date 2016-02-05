require './errors.rb'

class CurrencyConverter

  def initialize(rates)
    @rates = rates
  end

  def rates
    @rates
  end

  def find_rate(code)
    @rates[code]
  end

  def convert(currency, new_code)
    converted_total = currency.amount.to_f * (find_rate(new_code) / find_rate(currency.code.to_sym))
    (@rates[new_code] && @rates[currency.code.to_sym]) ? (Currency.new(converted_total, new_code.to_s)) : (raise UnknownCurrencyCodeError)
  end

end
