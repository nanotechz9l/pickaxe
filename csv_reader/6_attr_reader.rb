#!/usr/bin/env ruby

#####
# Writable Attributes
#####

=begin
In Ruby, the attributes of an object can be accessed as if they were any other variable. 
We saw this earlier with phrases such as book.isbn. So, it seems natural to be able to 
assign to these variables when you want to set the value of an attribute. 
It turns out you do that by creating a Ruby method whose name ends with an equals sign. 
These methods can be used as the target of assignments:
=end 

class BookInStock
  attr_reader :isbn, :price
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end
  
  def price=(new_price) # Creating a method whose name ends with an = sign means it can appear on the left side of an assignment.
    @price = new_price
  end
end

book = BookInStock.new("isbn1", 33.80)
puts " ISBN  = #{book.isbn}"
puts " Price = #{book.price}"
book.price   = book.price * 0.75    # Invokes the method price= in the book object, passing it the discounted price as an argument
puts " New price = #{book.price}"
