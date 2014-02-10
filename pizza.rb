class Pizza

  attr_accessor :name, :toppings

  def initialize(toppings = nil)
    @toppings = toppings
    if @toppings ==nil
      @toppings = []
      @toppings.push('cheese')
    end
  end

  def is_veggie
    @toppings.all? {|topping| topping.vegetarian}
  end

  def add_topping(topping)
    @toppings.push(topping)
  end


end


class Topping

  attr_accessor :name, :vegetarian

  def initialize(name, vegetarian = false)
    @name = name
    @vegetarian = vegetarian
  end



end
