#!/usr/bin/env ruby

class BookInStock
  def initialize(isbn, price)
    @isbn  = isbn
    
    # This float method illustrates a simple piece of validation.
    # Float below takes its (price) argument and converts it to a floating-point number (as seen below with isbn1 = 3).
    # What we’re doing here is saying that we want to accept any object for the (price) parameter as long as that 
    # parameter can be converted to a float.
    @price = Float(price)
  end
end

# Create three objects, each with different initial states.
b1 = BookInStock.new("isbn1", 3)

# The p method prints out an internal representation of an object. 
# Using it, we can see that in each case our parameters got transferred 
# into the object’s state, ending up as instance variables:
p b1
b2 = BookInStock.new("isbn2", 3.14)
p b2
b3 = BookInStock.new("isbn3", "5.67")

p b3

=begin
p output: prints out internal object representations.
[nanob0t@x0054849 pickAxe]$ ./bookInStock_3.rb 
#<BookInStock:0x007fef51914810 @isbn="isbn1", @price=3.0>
#<BookInStock:0x007fef51914608 @isbn="isbn2", @price=3.14>
#<BookInStock:0x007fef51914450 @isbn="isbn3", @price=5.67>

puts output: puts writes the name of the object’s class, followed by a colon and the object’s unique identifier (a hexadecimal number). 
It puts the whole lot inside #<...>.
[nanob0t@x0054849 pickAxe]$ ./bookInStock_3.rb 
#<BookInStock:0x007ff9e1864498>
#<BookInStock:0x007ff9e1864330>
#<BookInStock:0x007ff9e18641f0>
=end