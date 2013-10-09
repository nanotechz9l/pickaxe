#!/usr/bin/env ruby

#####
# Virtual Attributes
#####

=begin
These attribute-accessing methods do not have to be just simple wrappers around an object’s instance variables. 
For example, you may want to access the price as an exact number of cents, rather than as a floating-point number of dollars.
=end

class BookInStock
  attr_reader   :isbn             # read only
  attr_accessor :price            # read and write
# attr_writer                     # write only 
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end
  def price_in_cents # Multiply floating-point price * 100 to get the price in cents, then add 0.5 before converting to an integer.
    Integer(price * 100 + 0.5)  # Why? Because floating-point numbers don’t always have an exact internal representation. 
   end                          # Also multiplying 33.8 times 100, gets us 3379.99999999999954525265. The Integer method would truncate 
   def price_in_cents=(cents)   # this to 3379. Adding 0.5 before calling Integer rounds up the floating-point value, ensuring we 
     @price = cents / 100.0     # get the best integer representation. This is a good example of why you want to use BigDecimal,
end                             # not Float, in financial calculations.
end

book = BookInStock.new("isbn1", 33.80)
puts " Price          = #{book.price}"
puts " Price in cents = #{book.price_in_cents}" # virtual instance variable
book.price_in_cents = 1234
puts " Price          = #{book.price}"
puts " Price in cents = #{book.price_in_cents}" # virtual instance variable

=begin
Here we’ve used attribute methods to create a virtual instance variable. 
To the outside world, "price_in_cents" seems to be an attribute like any other. 
Internally, though, it has no corresponding instance variable.This is more than a curiosity. 
In his landmark book Object-Oriented Software Construction [Mey97], Bertrand Meyer calls this the Uniform Access Principle. 
By hiding the difference between instance variables and calculated values, you are shielding the rest of the world from the 
implementation of your class. You’re free to change how things work in the future without impacting the millions of lines of 
code that use your class. This is a big win.
=end
