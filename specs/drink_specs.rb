require("minitest/autorun")
require("minitest/rg")
require_relative("../Drink.rb")

class TestDrink < MiniTest::Test





  def test_drink_has_name()
    drink = Drink.new("Rakia", 4)
    assert_equal("Rakia", drink.name())
  end

  def test_drink_has_price()
    drink = Drink.new("Rakia", 4)
    assert_equal(4, drink.price())
  end

end
