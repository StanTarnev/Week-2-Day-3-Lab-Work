require("minitest/autorun")
require("minitest/rg")
require_relative("../Customer.rb")
require_relative("../Pub.rb")
require_relative("../Drink.rb")

class TestPub < MiniTest::Test

  def setup

    @pub = Pub.new("Molly Malone's", 1000, [])

  end

  def test_pub_has_name()
    assert_equal("Molly Malone's", @pub.name())
  end

  def test_till_balance()
    assert_equal(1000, @pub.till())
  end

  def test_pub_available_drinks()
    assert_equal([], @pub.drinks())
  end

  def test_increase_till_amount()
    # the till has 1000
    # call the method to increase till amount by 10
    @pub.increase_till_amount(10)
    # the till has 1100
    # assert that till has 1010 in it
    assert_equal(1010, @pub.till)
  end


end
