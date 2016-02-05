class CurrencyConverter

  def initialize
    @rates = {USD: 1.00, EUR: 0.74, JPY: 120.0, CAD: 1.37}
  end

  def find_rate(code)
    @rates[code]
  end

  def convert(currency, new_code)
    converted_total = currency.amount.to_f * (find_rate(new_code) / find_rate(currency.code.to_sym))
    (@rates[new_code] && @rates[currency.code.to_sym]) ? (coverted_currency = Currency.new(converted_total, new_code.to_s)) : (raise UnknownCurrencyCodeError)
  end

end

class UnknownCurrencyCodeError < StandardError
end
