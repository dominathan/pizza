require './pizza'

describe Pizza do
  it "exists" do
    expect(Pizza).to be_a(Class)
  end

describe Pizza do
  describe '.initialize' do
    it 'records all of the toppings' do
      toppings = [
        Topping.new('mushrooms', vegetarian = true),
        Topping.new('pepperoni')
      ]
      pizza = Pizza.new(toppings)
      expect(pizza.toppings).to eq(toppings)
    end

    it 'defaults the toppings to cheese only, if the pizza has no toppings' do
      pizza = Pizza.new
      expect(pizza.toppings.size).to eq(1)
      expect(pizza.toppings.first).to eq('cheese')
    end

    it 'all toppings are vegetarian?' do
      toppings = [
        Topping.new('mushrooms', vegetarian = true),
        Topping.new('onions',vegetarian = true)]
      pizza = Pizza.new(toppings)
      #write method that checks if pizza called is_veggie
      expect(pizza.is_veggie).to eq(true)

      toppingnotveg = [
        Topping.new('pepperoni'),
        Topping.new('onion',vegetarian = true)]
        newpizza= Pizza.new(toppingnotveg)
        expect(newpizza.is_veggie).to eq(false)
    end

    it 'add a topping to the @topping and pizza' do
      #check if add_topping is on pizza?
      #pizza.topping[1].name
      pizza = Pizza.new
      pep = Topping.new('pepperoni')
      pizza.add_topping(pep)
      expect(pizza.toppings[1].name).to eq('pepperoni')
    end

  end
end
end

describe Topping do
  describe '.initialize' do
    it "sets the name of the toppings" do

      topping = Topping.new 'olives', vegetarian: true
      expect(topping.name).to eq('olives')

    end

    it 'sets whether or not the topping is vegetarian' do
      topping =  Topping.new('bell peppers', vegetarian= true)
      expect(topping.vegetarian).to eq(true)
    end
  end

  it "exists" do
    expect(Topping).to be_a(Class)
  end
end
