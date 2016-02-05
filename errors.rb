class UnknownCurrencyCodeError < StandardError
end


class DifferentCurrencyCodeError < StandardError
  def initialize(msg="Cannot add or subtract currencies with different codes")
    super
  end
end
