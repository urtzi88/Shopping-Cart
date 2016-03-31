require 'date'

class ShoppingCart
  	def initialize
    	@items = []
  	end

  	def add_item(item)
  		@items.push(item)
  	end

  	def checkout
  		total_price = 0
  		puts "CHECKOUT: "
  		puts "----------------------------"
  		@items.each do |item|
  			puts "#{item.name}" + ": " + "#{item.price}" + "$"
  			total_price += item.price	
  		end
  		puts "----------------------------"
  		puts "TOTAL PRICE: " + "#{total_price}" + "$"
  	end
end

class Item
	attr_reader :name, :price
  	def initialize(name, price)
		@name = name
		@price = price
	end

  	def price
  		@price
  	end
end

class Houseware < Item
  	def price
     	if @price > 100
			discounted_price = @price * 0.9
			discounted_price
      	else
      		@price
      	end
  	end
end

class Fruit < Item
  	def price
      	today_day = Date.today.wday
      	if today_day == 4 || today_day == 6
      		discounted_price = @price * 0.95
      		discounted_price
      	else
      		@price
      	end
  	end
end

banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

urtzis_cart = ShoppingCart.new

urtzis_cart.add_item(orange_juice)
urtzis_cart.add_item(rice)
urtzis_cart.add_item(vacuum_cleaner)
urtzis_cart.add_item(banana)
urtzis_cart.checkout




