# First Non-repeated
#
# Write a method that will find the first non-repeated
# character in a String. Return false if only repeats
# are found.
#
# *** Whiteboard this first! ***
#
# Pro tip: code quality is a a big deal to potential
# employers. Use smart variable names, keep an eye on
# indentation and be consistent in your decisions
# (e.g. stick to single or double quotes)
#
# Difficulty: ~6/10 (Varies depending on solution. 
# The more optimised the solution, the more difficult
# the algorithm.)
#
# Beast mode: can you return on the first non-repeat,
# without checking every other letter?
#
# Beat mode++: can you maintain linear time?
#
# Example:
# firstNonRepeat('aaaabbbcccdeeefgh') -> 'd'
# firstNonRepeat('wwwhhhggge') -> 'e'
# firstNonRepeat('awwwhhhggge') -> 'a'
# firstNonRepeat('wwwhhhggg') -> false
#
# Check your solution by running the tests:
# ruby tests/13_first_non_repeated_test.rb
#

def firstNonRepeat (string)
  # array to store all characters with
  no_repeats = []

  result = Hash.new 0

  string.chars.each do |x|   
  result[x] += 1
  end

  if result.key(1) 
    return result.key(1)
    # first solution below
    # no_repeats << result.key(1)
    # return no_repeats[0]
  end

  if no_repeats.empty?
    return false
  end
  
end

firstNonRepeat('aaaabbbcccdeeefgh')
firstNonRepeat('wwwhhhggge')
firstNonRepeat('awwwhhhggge')
firstNonRepeat('wwwhhhggg')
