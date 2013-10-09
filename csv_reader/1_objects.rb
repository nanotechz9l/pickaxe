#!/usr/bin/env ruby

=begin
After this code runs, we’d have two distinct objects, both of class BookInStock. 
But, apart from the fact that they have different identities, these two objects are otherwise the same— 
there’s nothing to distinguish one from the other. And, what’s worse, these objects actually don’t hold 
any of the information we need them to hold.

The best way to fix this is to provide the objects with an initialize method. 
This lets us set the state of each object as it is constructed. We store this state in instance variables inside the object. 
(Remember instance variables? They’re the ones that start with an @ sign.) Because each object in Ruby has its own distinct 
set of instance variables, each object can have its own unique state.
=end

class BookInStock
end

	a_book       = BookInStock.new
	another_book = BookInStock.new