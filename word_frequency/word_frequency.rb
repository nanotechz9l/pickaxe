#!/usr/bin/env ruby
require 'rainbow'

# Method that splits a string into words:
def words_from_string(string) 			# downcase returns a lowercase version of a string
	string.downcase.scan(/[\w']+/)		# scan returns an array of substrings that match a pattern
	end					# containing “word characters” and single quotes.

# Method that counts word frequency
def count_frequency(word_list)
  
			# Create hash object with a 0 default value. 0 will be the value returned if we look up a key that isn’t yet in the hash.
			counts = Hash.new(0)
			for word in word_list
			counts[word] += 1
		end
			counts
	end

	raw_text  = File.read("para.txt")
	word_list = words_from_string(raw_text)
	counts    = count_frequency(word_list)

	# Display results based on word frequency with the hash .sort_by method.
	# When you use sort_by, you give it a block that tells the sort what to 
	# use when making comparisons. In our case, we’ll just use the count. 
	# The result of the sort is an array containing a set of two-element arrays, 
	# each subarray corresponding to a key/entry pair in the original hash.
		sorted      = counts.sort_by {|word, count | count}
		top_twenty  = sorted.last(20)

	# The method each is an iterator. A method that invokes a block of code repeatedly.

	# Long way:
	# top_five.each do | word, count|
	# puts "#{word}: #{count}"

			# Short way:
			puts top_twenty.map { |word, count| "#{word}: #{count}" }
