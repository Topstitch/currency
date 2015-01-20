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

  def test_two_currency_objects_are_equivalent
    my_dollar = Currency.new(1, "USD")
    your_dollar = Currency.new(1, "USD")
    assert my_dollar == your_dollar
  end

end




#http://www.skorks.com/2009/09/ruby-equality-and-object-comparison/
