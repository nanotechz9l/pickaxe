#!/usr/bin/env ruby

=begin
First. Parameters to a block are now always local to a block, even if they have the same name as locals 
in the surrounding scope. (You’ll get a warning message if you run Ruby with the -w option.)
=end

value1 = "some shape"
[ 1, 2 ].each {|value| puts value1} 
                                   
puts "Value1 = #{value1}\n\n\n"

=begin
ruby -w some_shape.rb 
some_shape.rb:4: warning: shadowing outer local variable - value
1
2
some shape
=end

=begin
Second, you can now define block local variables by putting them after a semicolon in the block’s parameter list. 
So, in our sum-of-squares example, we should have indicated that the square variable was block-local by writing it as follows:
=end

square = "some shape"
sum    = 0

=begin
By making square a block-local variable, values assigned inside the block will not affect the value of the 
variable with the same name in the outer scope.
=end
[ 1, 2, 3, 4 ].each do |value; square| # ; indicates the square as a block-local variable
  square = value * value # This value is a different variable ;)
  sum    += square
end

puts sum
puts square
