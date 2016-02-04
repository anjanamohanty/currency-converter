class CurrencyConverter
  def initialize
    @rates = {USD: 1.00, EUR: 0.74}
  end

  def find_rate(code)
    @rates[code]
  end

  def convert(currency, new_code)
    coverted_currency = Currency.new((currency.amount.to_f * (find_rate(new_code) / find_rate(currency.code.to_sym))), new_code.to_s)
    # currency.multiply(find_rate(new_code) / find_rate(currency.code.to_sym)
    # currency.code
  end
end
