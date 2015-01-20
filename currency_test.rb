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

  def test_add_two_currency_objects
    my_money = Currency.new(5, "USD")
    your_money = Currency.new(10, "USD")
    assert my_money + your_money == Currency.new(15, "USD")
  end

end




#http://www.skorks.com/2009/09/ruby-equality-and-object-comparison/
