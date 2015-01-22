require './currency.rb'
require './unknown_currency_code_error'


class CurrencyConverter < Currency

  attr_reader :currency_rates
  def initialize
    @currency_rates = {USD: 1.00000,
                       EUR: 0.86384,
                       GBP: 0.66054,
                       AUD: 1.23455,
                       CAD: 1.23290,
                       JPY: 117.874}

  end

  def convert(current_money, desired_type)
    if !(currency_rates.keys.include?(desired_type))
      raise UnknownCurrencyCodeError, "Sorry, we do not have the rates for that currency type."
    elsif current_money.currency_code == desired_type
      Currency.new(current_money.amount, desired_type)
    elsif
      my_money = current_money.amount
      total = my_money * currency_rates[desired_type] / currency_rates[current_money.currency_code]
      Currency.new(total, desired_type)
    end
  end

end

# # module CurrencyConstants
# #   RATES = {USD: 1.0
# #   AUD: 1.2
# #   EUR: 0.84}
#
#     CODES = {"$" => :USD
#             "€" => :EUR
#             "¥" => :JPY}
#
#
#
# #
# # end
# #
# # Rates::RATES
# class ...
#   def codes
#     {"$" => :USD
#       "€" => :EUR
#       "¥" => :JPY}
#   end
#   def initialize(string)
#     #CurrencyConstants::CODES[string[0]]
#     first_letter = string[0]
#     @code = codes[first_letter]
#   end
# end
#
# if you pass it $12, it takes the $, and it searches the hash for the $
