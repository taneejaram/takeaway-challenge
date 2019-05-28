# Takeaway Challenge

```
As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes
```

In the dish.rb file is the list of dishes with prices managed in the add_dishes method.

Orders are placed in the order.rb file first by accessing a list using a dependency injection.

```
  def initialize(dish_class = Dish.new)
    @order = []
    @dish_class = dish_class
  end
```

The see_list method allows customers to see the list of available dishes using a new instance of it.
```
  def see_list
    @dish_class.list
  end
```

The select method can make an order by selecting a dish from the list and putting it into a new empty array - 'order'. This method also checks that the item number selected is actually included in the list- if a number bigger than the list is selected, an error will be raised expressing so.

```
  def select(n)
    raise "The menu does not contain this item number. Please choose again" if n > @dish_class.list_length
      @order.push(@dish_class.list[n - 1])
  end
```
