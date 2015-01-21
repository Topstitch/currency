require './currency.rb'
require 'pry'

class CurrencyConverter < Currency

  attr_reader :currency_codes
  def initialize
    @currency_codes = {USD: 1.00000, EUR: 0.86384}
  end

  def convert(current_money, desired_type)
    if current_money.currency_code == desired_type
      Currency.new(current_money.amount, desired_type)
    else
      my_money = current_money.amount
      total = my_money * currency_codes[desired_type] / currency_codes[current_money.currency_code]
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
