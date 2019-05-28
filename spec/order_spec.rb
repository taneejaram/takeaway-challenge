require 'order'
require 'dish'

describe Order do
  let(:order) { Order.new }
  let(:dish) { double(:dish, :list => [{:"Spicy lentil soup" => 4.00}, {:"Fish and Chips" => 10.00},
  {:"Prawn Curry" => 7.00},
  {:"Vietnamese noodle salad" => 4.00},
  {:"Garlic mushrooms on toast" => 4.00},
  {:"Veggie fajitas" => 4.00}]) }

  it 'can create a new order' do
    expect(order).to be_a_kind_of(Order)
  end

  it 'can see a list of available dishes' do
    dish.list
    expect(order.see_list).to eq([{:"Spicy lentil soup" => 4.00}, {:"Fish and Chips" => 10.00},
    {:"Prawn Curry" => 7.00},
    {:"Vietnamese noodle salad" => 4.00},
    {:"Garlic mushrooms on toast" => 4.00},
    {:"Veggie fajitas" => 4.00}])
  end

  # it 'can make an order by selecting a dish from the list of dishes' do
  #   dish.add_dishes
  #   order.see_list
  #   expect(order.select(1)).to eq({:"Spicy lentil soup" => 4.00})
  # end

  it 'checks that the item number selected is actually included in the list' do
    dish.list
    expect{order.select(7)}.to raise_error("The menu does not contain this item number. Please choose again")
  end

  # it 'adds all of the selected items onto an order' do
  #   order = Order.new
  #   order.add_dishes
  #   order.select(1)
  #   order.select(4)
  #   expect(order.order).to eq([{:"Spicy lentil soup" => 4.00},
  #     {:"Vietnamese noodle salad" => 4.00}])
  # end

  # it 'can add the total price of the order' do
  #   order = Order.new
  #   order.add_dishes
  #   order.select(1)
  #   order.select(4)
  #   expect(order.total).to eq(8.00)
  # end

end
