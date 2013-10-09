#!/usr/bin/env ruby

sum = 0 # Initialize sum to 0 outside the block
	[1, 2, 3, 4].each do |value| # The |value| code block is being called by the each method for every element in the array.
				     # puts "Value = #{value}" #= 1, 2, 3, 4
		square = value * value  # Square variable is being assigned value * value.
					# puts "Square = #{square}" #= 1, 4, 9, 16
		
		# += An add and assignment operator, it adds right operand to the left operand and assigns the result to left operands
		sum += square # Sum variable updated inside the block.
end
			puts "\nSum is #{sum}...\n\n" # Pass sum to puts after the .each method returns
			#puts square # square_num_sum.rb:13:in `<main>': undefined local variable or method `square' for main:Object (NameError)

=begin
This illustrates an important rule: if there’s a variable inside a block (betwwen do ... end) with the same name as a variable 
in the same scope outside the block, the two are the same—there’s only one variable sum in the preceding program. 
(You can override this behavior, as we’ll see later.)

If, however, a variable appears only inside a block (betwwen do ... end), then that variable is local to the block -- in the above program, 
we couldn’t have written the value of square at the end of the code, 
because square is not defined at that point. It is defined only inside the block itself.

puts square:
square_num_sum.rb:13:in `<main>': undefined local variable or method `square' for main:Object (NameError)
=end