#!/usr/bin/env ruby

=begin
A Ruby iterator is simply a method that can invoke a block of code.
We said that a block may appear only in the source adjacent to a method call and that the code in the block is not executed 
at the time it is encountered. Instead, Ruby remembers the context in which the block appears (the local variables, the current 
object, and so on) and then enters the method. This is where the magic starts.
Within the method, the block may be invoked, 
almost as if it were a method itself, using the yield statement.  
=end

def three_times
  yield             # Whenever a yield is executed, it invokes the code in the block.
  yield        
  yield
end                 # When the block exits, control picks back up immediately after the yield method call.

three_times {puts "Hello"}
puts

=begin
The block (the code between the braces) is associated with the call to the three_times method. Within this method, yield is called 
three times in a row. Each time, it invokes the code in the block, and a cheery greeting is printed. What makes blocks interesting, 
however, is that you can pass parameters to them and receive values from them.
=end

=begin
For example, we could write a simple function that returns members of the Fibonacci series up to a certain value:
=end

def fib_up_to(max)
  i1, i2 = 0, 1         # parallel assignment (i1 = 0 and i2 = 1)
  while i1 <= max       # while i1 is less than or equal to max
    yield i1            # invoke the code block
    # In this example, the yield statement has a parameter. This value is passed to the associated block.
    
    i1, i2 = i2, i1+i2
  end
end

=begin
In the definition of the block, the argument list appears between vertical bars |f|. In this instance, the variable f receives the value 
passed to yield, so the block prints successive members of the series. (This example also shows parallel assignment in action.
Although it is common to pass just one value to a block, this is not a requirement; a block may have any number of arguments.
=end

# By definition, the first numbers in the Fibonacci sequence are 0, and 1, and each subsequent number is the sum of the previous two.
fib_up_to(100000000) {|f| print f, " " }
puts
