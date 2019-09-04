class Pub

  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = []
  end

def increase_till_amount(amount)
  @till += amount
end

end
