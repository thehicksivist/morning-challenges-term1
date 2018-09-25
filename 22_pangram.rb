# 22_pangram.rb
# Determine if a sentence is a pangram. 
# A pangram (Greek: παν γράμμα, pan gramma, 
# "every letter") is a sentence using every letter 
# of the alphabet at least once. 
# The best known English pangram is "The quick brown fox jumps over the lazy dog."

# The alphabet used is ASCII, and case insensitive, 
# from 'a' to 'z' inclusively.

class Pangram

    def self.is_pangram?(str)
        # put code here
        # list all letters as downcase into new array
        # compare the new array with alphabet
        alphabet = [a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z]
        chars = []

    str.chars.each do |x|   
    chars[x.downcase]
    end
puts alphabet
puts chars
end

pangram = Pangram.new
pangram.self.is_pangram?("The quick brown fox jumps over the lazy dog")

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