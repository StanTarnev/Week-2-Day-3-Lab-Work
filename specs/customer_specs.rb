require("minitest/autorun")
require("minitest/rg")
require_relative("../Customer.rb")
require_relative("../Drink.rb")
require_relative("../Pub.rb")

class TestCustomer < MiniTest::Test

  def setup()
    @customer = Customer.new("Eduardo", 100)
    @drink = Drink.new("Rakia", 20)
    @pub = Pub.new("Molly Malone's", 1000, [])
  end

  def test_customer_has_name()
    assert_equal("Eduardo", @customer.name())
  end

  def test_customer_has_money()
    assert_equal(100, @customer.wallet())
  end

  def test_buy_drink()
    # @customer buys drink
    @customer.buy_drink(@drink, @pub)
    assert_equal(80, @customer.wallet())
    assert_equal(1020, @pub.till())
  end


end
