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

end
