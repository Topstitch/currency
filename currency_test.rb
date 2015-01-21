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

  def test_subtract_two_currency_objects
    my_money = Currency.new(20, "USD")
    #what about situations where this would be a negative #? $ doesn't work that way
    your_money = Currency.new(5, "USD")
    assert my_money - your_money == Currency.new(15, "USD")
  end

  def test_combining_mismatched_currencies_raises_error
    my_money = Currency.new(15, "USD")
    your_money = Currency.new(25, "GBP")
    assert_raises(DifferentCurrencyCodeError) {my_money + your_money}
    assert_raises(DifferentCurrencyCodeError) {my_money - your_money}
  end

  def test_can_multiply_by_float_or_fixnum
    #later do something in here about decimal places
    my_money = Currency.new(10, "USD")
    assert (my_money * 8) == Currency.new(80, "USD")
    assert (my_money * 2.5) == Currency.new(25, "USD")
  end

end




#http://www.skorks.com/2009/09/ruby-equality-and-object-comparison/
