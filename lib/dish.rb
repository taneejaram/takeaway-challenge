class Dish
  attr_reader :list, :list_length

  def initialize
    @list = [{:"Spicy lentil soup" => 4.00},
    {:"Fish and Chips" => 10.00},
    {:"Prawn Curry" => 7.00},
    {:"Vietnamese noodle salad" => 4.00},
    {:"Garlic mushrooms on toast" => 4.00},
    {:"Veggie fajitas" => 4.00}]
    @list_length = @list.length
  end

end
