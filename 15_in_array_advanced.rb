# In Array Advanced
#
# Don't use any array helper methods except for .each
#
# This is the same as yesterday's challenge with one improvement.
# in_array_advanced takes an additional boolean argument 'strict'.
# If strict is true, in_array should care about leTteR CasIng.
# If strict is false, in_array should return true for any match.
#
# Difficulty:
# 4/10
#
# Example:
# in_array("HeLLo", ["hi", "howdy", "HeLLo"], true) should return true
# in_array("DrAkE", ["jayz", "kanye", "drake"], false) should return true
# in_array("DrAkE", ["jayz", "kanye", "yachty"], false) should return flse
#
# Check your solution by running the tests:
# ruby tests/08_in_array_advanced_test.rb
#

def in_array (needle, haystack, strict)
  if strict == true
    for x in haystack
      if x == needle
        puts "needle found1"
        return true
      else
        puts "needle not found1"
      end
      
    end
    return false
  else strict == false
    for x in haystack
      if x == needle.downcase
        puts "needle found2"
        return true
      else
        puts "needle not found2"
      end
    end
    return false
  end
end

in_array("HeLLo", ["hi", "howdy", "HeLLo"], true)
in_array("DrAkE", ["jayz", "kanye", "drake"], false)
in_array("DrAkE", ["jayz", "kanye", "yachty"], false)