require './currency.rb'
require 'pry'

class CurrencyConverter
  attr_reader :currency_codes
  def initialize
    @currency_codes = {"USD" => 1.00000, "EUR" => 0.86384}
  end
end

snee = CurrencyConverter.new
