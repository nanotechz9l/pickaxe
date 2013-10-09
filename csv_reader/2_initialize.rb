#!/usr/bin/env ruby

=begin
The best way to fix this is to provide the objects with an initialize method. 
This lets us set the state of each object as it is constructed. We store this state in instance variables inside the object. 
(Remember instance variables? They’re the ones that start with an @ sign.) Because each object in Ruby has its own distinct 
set of instance variables, each object can have its own unique state.
=end

class BookInStock
  
  # initialize method takes two parameters
  def initialize(isbn, price) # acting like local variables, they would be inop once initialize method returns
    @isbn  = isbn # we need to upgrade them to instance variables. Also, @isbn is not the same as isbn. @isbn is an instance method
    @price = Float(price)
  end
end

