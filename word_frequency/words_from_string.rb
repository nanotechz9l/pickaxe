#!/usr/bin/env ruby

# Method that splits a string into words:
def words_from_string(string) 			# downcase returns a lowercase version of a string
	string.downcase.scan(/[\w']+/)		# scan returns an array of substrings that match a pattern
	end					# containing “word characters” and single quotes.
