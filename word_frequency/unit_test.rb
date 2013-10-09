#!/usr/bin/env ruby

=begin
The test starts by requiring the source file containing our words_from_string method, 
along with the unit test framework itself.
=end
require_relative 'words_from_string.rb'
require 'test/unit'

=begin
It then defines a test class. Within that class, 
any methods whose names start with test are automatically run by the testing framework.
=end
class TestWordsFromString < Test::Unit::TestCase
	def test_empty_string
		assert_equal([], words_from_string(""))
		assert_equal([], words_from_string("     "))
end

def test_single_word
		assert_equal(["cat"], words_from_string("cat"))
		assert_equal(["cat"], words_from_string("   cat   "))
end

def test_many_words
		assert_equal(["the", "cat", "sat", "on", "the", "mat"],
		             words_from_string("the cat sat on the mat"))
end

def test_ignores_punctuation
		assert_equal(["the", "cat's", "mat"],
		             words_from_string("<the!> cat's, -mat-"))
	end
end

=begin
The results show that four test methods ran, successfully executing six assertions:
[2.0.0-p0] [turn0ut4@zexie+ev1l word_frequency]$ ruby ./unit_test.rb 
Run options: 

# Running tests:

Finished tests in 0.005959s, 671.2536 tests/s, 1006.8803 assertions/s.
4 tests, 6 assertions, 0 failures, 0 errors, 0 skips

ruby -v: ruby 2.0.0p0 (2013-02-24 revision 39474)
=end