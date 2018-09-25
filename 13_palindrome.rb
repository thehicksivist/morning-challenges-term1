# Palindrome
#
# Write a method that will take a word as a string and
# return a boolean indicating whether or not the word
# is a palindrome.
#
# Difficulty:
# 3/10
#
# Example:
# palindrome("hello") should return false
# palindrome("racecar") should return true
#
# Check your solution by running the tests:
# ruby tests/06_palindrome_test.rb
#

def palindrome (string)
<<<<<<< HEAD
  # Your code here
  if string == string.reverse
    puts "true"
  else
    puts "false"
  end
end

palindrome("hello")
palindrome("racecar")
palindrome("hannah")
palindrome("global")
=======
  string == string.reverse
end
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
