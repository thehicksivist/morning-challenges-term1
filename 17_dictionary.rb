# Dictionary
#
# Extend the Dictionary class.
#
# It should have three methods:
# .add_word(word, definition) -> Should store a word and definition
# .lookup(word) -> Should return a definition
# .total_words -> Should return the number of words stored
#
# Difficulty:
# 4/10
#
# Example:
# dictionary = Dictionary.new
# dictionary.add_word('ruby', 'A precious stone')
# dictionary.total_words -> should return 1
# dictionary.lookup('ruby') -> should return 'A previous stone'
#
# Check your solution by running the tests:
# ruby tests/10_dictionary_test.rb
#

class Dictionary
  def initialize
    @dictionary = Hash.new 0
  end
  def add_word(word, definition)
    @dictionary[word] = definition
  end
  def lookup(word) 
  #return definition
    value = @dictionary[word]
  end
  def total_words
  #return number of words
  length = @dictionary.length
  end
end

dictionary = Dictionary.new
dictionary.add_word('ruby', 'A precious stone')
dictionary.lookup('ruby')
dictionary.total_words