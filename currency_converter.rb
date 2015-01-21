require './currency.rb'
require 'pry'

class CurrencyConverter < Currency

  attr_reader :currency_codes
  def initialize
    @currency_codes = {USD: 1.00000, EUR: 0.86384}
  end

  def convert(current_currency_object, desired_type)
    if current_currency_object.currency_code == desired_type
      Currency.new(current_currency_object.amount, desired_type)
    end
  end

end
