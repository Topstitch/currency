require './different_currency_code_error'


class Currency
  attr_reader :amount, :currency_code
  def initialize(amount, currency_code)
    @amount = amount
    @currency_code = currency_code
  end

  def == (other_money)
    self.amount == other_money.amount && self.currency_code == other_money.currency_code
  end

  def + (other_money)
    if self.currency_code == other_money.currency_code
      Currency.new(amount + other_money.amount, currency_code)
    else
      raise DifferentCurrencyCodeError, "You cannot add two different kinds of currency"
    end
  end

  def - (other_money)
    if self.currency_code == other_money.currency_code
      Currency.new(amount - other_money.amount, currency_code)
    else
      raise DifferentCurrencyCodeError, "You cannot subtract two different kinds of currency."
    end
  end

  def * (number)
    Currency.new(amount * number, currency_code)
  end

end
