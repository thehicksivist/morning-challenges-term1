# Unique
#
# Ruby has a handy array.unique helper which removes
# duplicates. Imlpement your own version of the helper,
# without using .unique.
#
# Difficulty:
# 5/10
#
# Example:
# unique([1,2,3,3]) should return [1,2,3]
# unique(["tom", "tom", "tom"]) should return ["tom"]
#
# Hints:
# A hash could be helpful in your solution.
#
# Check your solution by running the tests:
# ruby tests/09_unique_test.rb
#

def unique (mylist)
  arr = [] 
  mylist.each do |x|
    arr << x
  end
  counts = Hash.new 0
  arr.each do |i|
  counts[i] += 1
  end
  list = counts.keys
  return list
end

unique([1,2,3,3]) 
#should return [1,2,3]
unique(["tom", "tom", "tom"]) 
# should return ["tom"]

#FIRST SOLUTION: program works, but doesn't pass test
# def unique (mylist)
#   sicklist = []
#   # Your code here
#   for x in mylist
#     sicklist << x
#   end
#   for i in sicklist
#     if sicklist.count(i) > 1
#       sicklist.delete(i)
#       sicklist << i
#     else
#     end
#   end
#   return sicklist
#   puts "#{sicklist}"
# end

# unique([1,2,3,3]) 
# # should return [1,2,3]
# unique(["tom", "tom", "tom"]) 
# # should return ["tom"]