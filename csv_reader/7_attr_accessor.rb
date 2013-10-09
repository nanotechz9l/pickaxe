#!/usr/bin/env ruby

#####
# Writable Attributes
#####

=begin
Again, Ruby provides a shortcut for creating these simple attribute-setting methods. 
If you want a write-only accessor, you can use the form attr_writer, but that’s fairly rare. 
You’re far more likely to want both a reader and a writer for a given attribute, so you’ll use the handy-dandy attr_accessor method:
=end

class BookInStock
  attr_reader   :isbn             # read only
  attr_accessor :price            # read and write
# attr_writer                     # write only 
  def initialize(isbn, price)
    @isbn  = isbn
    @price = Float(price)
  end
end

book = BookInStock.new("isbn1", 33.80)
puts " ISBN  = #{book.isbn}"
puts " Price = #{book.price}"
book.price   = book.price * 0.75    # Invokes the method price= in the book object, passing it the discounted price as an argument
puts " New price = #{book.price}"
