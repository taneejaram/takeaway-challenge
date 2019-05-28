require './lib/order'

order = Order.new
order.add_dishes
order.select(7)
