class Pizza

  attr_accessor :name, :toppings

  def initialize(toppings = nil)
    @toppings = toppings
    if @toppings ==nil
      @toppings = []
      @toppings.push('cheese')
    end
  end



end


class Topping

  attr_accessor :name, :vegetarian

  def initialize(name, vegetarian = false)
    @name = name
    @vegetarian = vegetarian
  end

end
