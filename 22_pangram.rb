# 22_pangram.rb
# Determine if a sentence is a pangram. 
# A pangram (Greek: παν γράμμα, pan gramma, 
# "every letter") is a sentence using every letter 
# of the alphabet at least once. 
# The best known English pangram is "The quick brown fox jumps over the lazy dog."

# The alphabet used is ASCII, and case insensitive, 
# from 'a' to 'z' inclusively.


class Pangram

    def rem_unicode(x)
        #use this to remove non-ascii characters, loop through array and change to empties
        t = s.gsub(/[^[:ascii:]]/, " ")
    end

    def self.is_pangram?(str)
        alphabet = ('a'..'z').to_a
        string = str.downcase
        split = string.split("").each { |i| (@letters) }
        letters = split.reject { |c| c == " " }

        compare = alphabet & letters 
        if compare == alphabet
            return true
        else
            return false
        end
    end

end

# pangram = Pangram.new
# pangram.is_pangram?("The quick brown fox jumps over the lazy dog.#@$%")
# pangram.is_pangram?("My name is slim shady")
# pangram.is_pangram?("Carved symbols in a mountain hollow on the bank of an inlet irritated an eccentric person")
# pangram.is_pangram?("pew pew")
# pangram.is_pangram?("Two driven jocks help fax my big quiz")
# pangram.is_pangram?("Jack love my big wad of sphinx quartz.")

# Code to remove non-ascii characters (not required)
# stripped = string.gsub(/[^[:ascii:]]/, " ")

# ATTEMPT 1
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

#ATTEMPT 2
# @letters = []

#         str.chars.each do |x| 
#         @letters = x.downcase
#         end
#         if @letters == str
#             puts true
#         else
#             puts false
#             puts "#{@alphabet}"
# puts "#{@letters}"
# puts "#{@split}"
#         end
