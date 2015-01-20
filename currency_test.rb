require 'minitest/autorun'
require 'minitest/pride'
require './currency.rb'

class CurrencyTest <Minitest::Test
  def test_currency_class_exists
    assert Currency
  end

  def test_currency_class_takes_two_parameters
    assert Currency.new("", "")
  end

end
