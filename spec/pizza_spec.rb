require './pizza'

describe Pizza do
  it "exists" do
    expect(Pizza).to be_a(Class)
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

  xit "exists" do
    expect(Topping).to be_a(Class)
  end
end
