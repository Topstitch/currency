require 'minitest/autorun'
require 'minitest/pride'
require './currency.rb'
require './currency_converter.rb'

#which requires are required????
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
    #could have put some refutes in here with different amounts
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

  def test_currency_converter_class_exists
    assert CurrencyConverter
  end

  def test_currency_converter_initializes_with_hash
    money_machine = CurrencyConverter.new
    different_currencies = money_machine.currency_rates
    assert_equal Hash, different_currencies.class
  end

  def test_currency_converter_converts_same_currency_type
    money_machine = CurrencyConverter.new
    new_money = Currency.new(1, :USD)
    newest_money = money_machine.convert(new_money, :USD)
    assert_equal Currency.new(1, :USD), newest_money
  end

  def test_currency_converter_converts_from_usd_to_another_type
    money_machine = CurrencyConverter.new
    my_money = Currency.new(5, :USD)
    changed_money = money_machine.convert(my_money, :EUR)
    assert_equal Currency.new(4.3192, :EUR), changed_money
  end

  def test_currency_converter_converts_different_currency_types
    money_machine = CurrencyConverter.new
    my_money = Currency.new(10, :EUR)
    changed_money = money_machine.convert(my_money, :GBP)
    assert_equal Currency.new(7.646554917577329, :GBP), changed_money
  end

  def test_currency_converter_raiser_error_with_unknown_currency
    money_machine = CurrencyConverter.new
    my_money = Currency.new(10, :BRL)
    assert_raises(UnknownCurrencyCodeError) {money_machine.convert(my_money, :USD)}
  end

end




#http://www.skorks.com/2009/09/ruby-equality-and-object-comparison/
