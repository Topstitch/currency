require 'minitest/autorun'
require 'minitest/pride'
require './currency.rb'

class CurrencyTest <Minitest::Test
  def test_currency_class_exists
    assert Currency
  end
end
