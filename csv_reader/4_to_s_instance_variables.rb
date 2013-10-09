#!/usr/bin/env ruby

=begin
Our experience tells us that during development we’ll be printing out the contents of a BookInStock object many times, 
and the default formatting leaves something to be desired. Fortunately, Ruby has a standard message, 
to_s, that it sends to any object it wants to render as a string. So, when we pass one of our BookInStock objects to puts, 
the puts method calls to_s in that object to get its string representation. So, let’s override the default implementation 
of to_s to give us a better rendering of our objects:
=end

class BookInStock
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end
  
  # There’s something going on here that’s both trivial and profound. 
  # See how the values we set into the instance variables @isbn and @price in the initialize method above are subsequently 
  # available in the to_s method? That shows how instance variables work—they’re stored with each object and available 
  # to all the instance methods of those objects.
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end
  b1 = BookInStock.new("isbn1", 3)
  puts b1
  b2 = BookInStock.new("isbn2", 3.14)
  puts b2
  b3 = BookInStock.new("isbn3", "5.67")
  puts b3
  