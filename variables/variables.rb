#!/usr/bin/env ruby

=begin
Now that we’ve gone to the trouble to create all these objects, 
let’s make sure we don’t lose them. Variables are used to keep track of objects; 
each variable holds a reference to an object.Let’s confirm this with some code:
=end

son = "Kriztov" # Here we create a new String object with the value Kriztov. A reference to it is placed in the local variable son.
puts "The object in 'son' is #{son.class}"
puts "The object has an id of #{son.object_id}"
puts "and a value of #{son}"

=begin
A quick check shows that the variable has indeed taken on the personality of a string, with an object ID, a class, and a value.
=end

# The object in 'son' is String
# The object has an id of 70245024860420
# and a value of Kriztov