# Vowels
#
# Write a method that will take a string and
# return an array of vowels used in that string.
#
# Difficulty:
# 4/10
#
# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]
#
# Check your solution by running the tests:
# ruby tests/04_vowels_test.rb
#

def vowels (string)
  # commented stuff is to return the values when the program is run; question asks to have the return value available in the test
  # vowels = []
  count_vowels = string.scan(/[aeiou]/i)
  # vowels << count_vowels
  # print vowels
end

vowels("a")
puts vowels("The quick brown fox")
puts vowels("Hello World")








# First Solution
# def vowels (string)
#   vowels = ["a", "e", "i", "o", "u"]
#   count_vowels = []
#   #loop through (vowels) and check if is in (string)
#   for x in vowels
#     if string.include? x
#       count_vowels << x
#     else
#     end
#   end
#   return count_vowels
# end

# puts vowels("hi there mate")

