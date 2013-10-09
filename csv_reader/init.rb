#!/usr/bin/env ruby

require_relative 'csv_reader' # (require_relative = file location we’re loading is relative to the file we’re loading it from (same directory).

reader = CsvReader.new
ARGV.each do |csv_file_name|
  STDERR.puts "Processing #{csv_file_name} file."
  reader.read_in_csv_data(csv_file_name)
end

puts "Total value = #{reader.total_value_in_stock}"

=begin
Do we need three source files for this? No. In fact, most Ruby developers would probably start off by sticking all this code into a single 
file—it would contain both class definitions as well as the driver code. But as your programs grow (and almost all programs grow over time), 
you’ll find that this starts to get cumbersome. You’ll also find it harder to write auto- mated tests against the code if it is in a monolithic 
chunk. Finally, you won’t be able to reuse classes if they’re all bundled into the final program.
=end