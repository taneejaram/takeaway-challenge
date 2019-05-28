class Order
  attr_reader :order

  def initialize(dish_class = Dish.new)
    @order = []
    @dish_class = dish_class
  end

  def see_list
    @dish_class.list
  end

  def select(n)
    raise "The menu does not contain this item number. Please choose again" if n > @dish_class.list_length
      @order.push(@dish_class.list[n - 1])
  end

end
