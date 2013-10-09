#!/usr/bin/env ruby

=begin
Assignment aliases objects, potentially giving you multiple variables that reference the same object. 
But can’t this cause problems in your code? It can, but not as often as you’d think (objects in Java, for example, 
work exactly the same way). For instance, in the exam- ple in Figure 3.1, you could avoid aliasing by using the dup 
method of String, which creates a new String object with identical contents:
=end

person1    = "Kriztov"
person2    = person1.dup # Avoid aliasing by using the dup method of String
person1[0] = "X"         # Replace the first letter in person1


person3    = "Veronika"
person4    = person3     # Avoid aliasing by using the dup method of String
person3.freeze           # Prevent modifications to the person3 object
person4[0] = "X"         # Replace the first letter in person1


puts "Person1 is #{person1}"
puts "Person2 is #{person2}"
puts "Person3 is #{person3}"
puts "Person4 is #{person4}"

=begin
./variables_3.rb 
Person1 is Xriztov
Person2 is Kriztov
=end

=begin
You can also prevent anyone from changing a particular object by freezing it. 
Attempt to alter a frozen object, and Ruby will raise a RuntimeError exception:

./variables_3.rb 
./variables_3.rb:18:in `[]=': can't modify frozen String (RuntimeError)
        from ./variables_3.rb:18:in `<main>'
=end
