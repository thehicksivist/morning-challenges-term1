# 22_pangram.rb
# Determine if a sentence is a pangram. 
# A pangram (Greek: παν γράμμα, pan gramma, 
# "every letter") is a sentence using every letter 
# of the alphabet at least once. 
# The best known English pangram is "The quick brown fox jumps over the lazy dog."

# The alphabet used is ASCII, and case insensitive, 
# from 'a' to 'z' inclusively.

class Pangram

    def is_pangram?(str)
        @split = str.split("").each { |i| yield i }
        @alphabet = ['a'..'z']
        @letters = []

    str.chars.each do |x| 
    chars[x.downcase]
    end
end
puts "#{@alphabet}"
puts "#{@letters}"
puts "#{@split}"

end

pangram = Pangram.new
pangram.is_pangram?("The quick brown fox jumps over the lazy dog")

# class Pangram

#     def self.is_pangram?(str)
#         # put code here
#         # list all letters as downcase into new array
#         # compare the new array with alphabet
#         for letter in [a..z]
# puts alphabet
# puts chars
# end

# pangram = Pangram.new
# pangram.is_pangram?("The quick brown fox jumps over the lazy dog")
