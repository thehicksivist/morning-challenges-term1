# Create a Deck class that uses the Card class you created last time.
#
# Deck functionality
# A deck has a public attribute:
#
# cards: array of remaining cards in the deck.
#
# ...and three public methods:
#
# count(): count of remaining cards in the deck.
#
# shuffle(): randomize the order of the remaining cards in the deck.
#
# draw(n): remove the last n cards from the deck and return them in an array.
#
# Upon initialization, a deck is filled with 52 cards (13 from each of 4 suits).

require_relative '24_card_game'

class Deck
<<<<<<< HEAD
  def initialize(card, card)
    # Create a new array of cards
    cards = [card, card]
  end
  
  def shuffle
    # Shuffle the remaining cards

  end

  def draw(n=1)
    # Draw (remove) n cards from the deck. Return those cards

  end

  def count
    # How many cards are left?
  end
=======
    attr_accessor :cards
    
    def initialize
        # Create a new array of cards
        @cards = []
        for suit in [:spades, :diamonds, :clubs, :hearts] do
            for rank in 1..13 do
                @cards << Card.new(suit, rank)
            end
        end
    end
    
    def shuffle
        # Shuffle the remaining cards
        @cards.shuffle!
    end
    
    def draw(n=1)
        # Draw (remove) n cards from the deck. Return those cards
        @cards.pop(n)
    end
    
    def count
        # How many cards are left?
        @cards.length
    end
>>>>>>> d785f49315f21edd5329234273e9431f9c199eea
end


# class Deck
#   def initialize
#     # Create a new array of cards
#     cards = []
#   end
  
#   def shuffle
#     # Shuffle the remaining cards

#   end

#   def draw(n=1)
#     # Draw (remove) n cards from the deck. Return those cards
    
#   end

#   def count
#     # How many cards are left?
#   end
# end