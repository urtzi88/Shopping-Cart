require 'date'

class ShoppingCart
  	def initialize
    	@items = []
  	end

  	def add_item(item)
  		@items.push(item)
  	end
end

class Item 
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
			@price = @price * 0.9
      	else
      		@price = @price
      	end
      	@price
  	end
end

class Fruit < Item
  	def price
      	today_day = Date.today.wday
      	if today_day == 0 || today_day == 6
      		@price = @price * 0.95
      	else
      		@price = @price
      	end
      	@price
  	end
end

banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovies = Item.new("Anchovies", 2)

puts "Banana: " + "#{banana.price}" + "$"
puts "Orange Juice: " + "#{orange_juice.price}" + "$"
puts "Rice: " + "#{rice.price}" + "$"
puts "Vacuum Cleaner: " + "#{vacuum_cleaner.price}" + "$"
puts "Anchovies: " + "#{anchovies.price}" + "$"




