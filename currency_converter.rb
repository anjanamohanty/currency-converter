class CurrencyConverter
  def initialize
    @rates = {USD: 1.00, EUR: 0.74}
  end

  def find_rate(code)
    @rates[code]
  end
end
