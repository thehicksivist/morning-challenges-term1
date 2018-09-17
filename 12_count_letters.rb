# Count Letters
#
# Write a method that will take a string, keep count
# of each letter and return the totals as a hash.
#
# Difficulty:
# 5/10
#
# Example:
# count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, o=>1}
# count_letters("abcba") should return {"a"=>2, "b"=>2, "c"=>1}
#
# Check your solution by running the tests:
# ruby tests/05_count_letters_test.rb
#

def count_letters (string)
   result = Hash.new 0# You'll need an empty hash to get started!
  string.chars.each do |x|   # add each new char to hash as key
  result[x] += 1
  end
  list = result.keys
  return list
  puts "#{result}"
 puts "#{list}"
end

count_letters("hello") 
# should return {"h"=>1, "e"=>1, "l"=>2, o=>1}
count_letters("abcba") 
# should return {"a"=>2, "b"=>2, "c"=>1}