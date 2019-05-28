require 'dish'

describe Dish do
  it 'can create a new dish' do
    dish = Dish.new
    expect(dish).to be_a_kind_of(Dish)
  end

  # it 'can display the empty array list of dishes' do
  #   dish = Dish.new
  #   expect(dish.list).to eq([])
  # end

  it 'can add dishes to the list' do
    dish = Dish.new
    dish.list
    expect(dish.list).to eq([{:"Spicy lentil soup" => 4.00}, {:"Fish and Chips" => 10.00},
    {:"Prawn Curry" => 7.00},
    {:"Vietnamese noodle salad" => 4.00},
    {:"Garlic mushrooms on toast" => 4.00},
    {:"Veggie fajitas" => 4.00}])
  end

end
