#!/usr/bin/env ruby

require 'csv'
require_relative 'book_in_stock' # (require_relative = file location we’re loading is relative to the file we’re loading it from (same directory).

class CsvReader
  def initialize         # Initialize method sets up an environment for our object, leaving it in a usable state. Other methods then use that state.
    @books_in_stock = [] # Create an array from the instance variable @books_in_stock
  end
  
  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row| # Open the .csv file. headers: true option = parse first line of file as the names of the columns.
      @books_in_stock << BookInStock.new(row["ISBN"], row["Amount"]) # Append data from each csv file into the array as new BookInStock objects.
    end
  end
  
  # later we'll see how to use inject to sum a collection 
  def total_value_in_stock
    sum = 0.0
    @books_in_stock.each {|book| sum += book.price} 
    sum
    end
    def number_of_each_isbn
      # ... 
      end
    end
