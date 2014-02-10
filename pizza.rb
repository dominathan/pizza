class Pizza

  attr_accessor :name, :toppings

  def initialize(toppings = [])
    @name = name
    @toppings = toppings

  end



end


class Topping

  attr_accessor :name, :vegetarian

  def initialize(name, vegetarian = false)
    @name = name
    @vegetarian = vegetarian
  end

end
