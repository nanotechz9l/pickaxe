#!/usr/bin/env ruby

#####
# Objects and Attributes
#####

=begin
For our BookInStock objects, the first thing we may need is the ability to find out the ISBN and price 
(so we can count each distinct book and perform price calculations). 
One way of doing that is to write accessor methods:
=end

### Long way to do it:::
class BookInStock
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end
  
  def isbn # define an accessor method to return the value of said instance variable. The method isbn, for example, 
    @isbn  # returns the value of the instance variable @isbn (because the last thing executed in the method is the
  end      # expression that simply evaluates the @isbn variable).
  
  def price # define an accessor method to return the value of said instance variable.
    @price
  end
end

book = BookInStock.new("isbn1", 12.34)
puts "ISBN  = #{book.isbn}"
puts "Price = #{book.price}\n\n"

=begin
Because writing accessor methods is such a common idiom, Ruby provides a convenient shortcut. 
attr_reader creates these attribute reader methods for you:
=end

### Best way to do it:::
class BookInStock
  attr_reader :isbn2, :price2   # attr_reader creates the .isbn2, and .price2 accessor methods
  def initialize(isbn2, price2) # It also eliminates 7 lines of code from the previous method above...
    @isbn2  = isbn2             # because we dont have to def isbn, and price.
    @price2 = Float(price2)     # In this case, the two methods are simply returning the values of the two instance variables
  end
end

book = BookInStock.new("isbn2", "60.34")
puts "ISBN = #{book.isbn2}"
puts "Price = #{book.price2}"
