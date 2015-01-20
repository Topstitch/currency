class Currency
  attr_reader :amount, :currency_code
  def initialize(amount, currency_code)
    @amount = amount
    @currency_code = currency_code
  end

  def ==(other_money)
    self.amount == other_money.amount
    self.currency_code == other_money.currency_code
  end

  def +(other_money)
    #if self and other money have the same currency code, then add the first two numbers
    if self.currency_code == other_money.currency_code
      Currency.new(amount + other_money.amount, currency_code)
    end
  end

end
