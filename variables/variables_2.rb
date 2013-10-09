#!/usr/bin/env ruby

=begin
So, is a variable an object? In Ruby, the answer is “no.” A variable is simply a reference to an object. 
Objects float around in a big pool somewhere (the heap, most of the time) and are pointed to by variables. 
Let’s make the example slightly more complicated:
=end

person1    = "Kriztov"
person2    = "person1"
person1[0] = "X"       # Replace the first letter in person1

puts "Person1 is #{person1}"
puts "Person2 is #{person2}"

=begin
./variables_2.rb 
Person1 is Xriztov
Person2 is person1
=end

=begin
It all comes back to the fact that variables hold references to objects, not the objects themselves. 
The assignment of person1 to person2 doesn’t create any new objects; it simply copies person1’s object 
reference to person2 so that both person1 and person2 refer to the same object.
=end