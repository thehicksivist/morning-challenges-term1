<<<<<<< HEAD
class Card
    include Comparable
    
    attr_accessor :suit, :rank, :rank_names 
    
    def initialize(suit, rank)
        # Create a new card
        @suit = suit
        @rank = rank
        @rank_names = {
            '1': 'Ace',
            '11': 'Jack',
            '12': 'Queen',
            '13': 'King'
        }
        
    end
    
    def face_card?
        # Is the card a face card (above 10)?
        @rank > 10
    end
    
    def <=>(other)
        @rank <=> other.rank
    end

    def to_s
        # Return human readable card
        rank = @rank_names[@rank.to_s.to_sym] || @rank.to_s
        suit = @suit.to_s
        suit[0] = suit[0].upcase
        "#{rank} of #{suit}"
    end
end

# TESTS BELOW
# card = Card.new("Hearts", "Queen")
# puts card.to_s
# card = Card.new("Hearts", 10)
# puts card.to_s



#Attempted solve
# class Card

#     attr_reader :suit, :rank 

#     def initialize(suit, rank)
#         # Create a new card
#         @suit = suit
#         @rank = rank
#         @card = "#{@rank} of #{@suit}"
#     end
    
#     def face_card?
#         # Is the card a face card (above 10)?
#         if @rank.to_i <= 10 && @rank.to_i > 1
#             false
#         else
#             true
#         end
#     end 
    
#     def to_s
#         # Return human readable card
#         case @rank
#         when 1
#             name = "Ace"
#         when 13
#             name = "King"
#         when 12
#             name = "Queen"
#         when 11
#             name = "Jack"
#         else
#             name = @rank.to_s
#         end
#         suit = @suit.capitalize
#         return "#{name} of #{suit}"

#     end
# end
=======
 class Card
  include Comparable
  
  attr_accessor :suit, :rank, :rank_names 
  
  def initialize(suit, rank)
    # Create a new card
    @suit = suit
    @rank = rank
    @rank_names = {
      '1': 'Ace',
      '11': 'Jack',
      '12': 'Queen',
      '13': 'King'
    }    
  end

  def face_card?
    # Is the card a face card (above 10)?
    @rank > 10
  end

  def <=>(other)
    @rank <=> other.rank
  end
  
  def to_s
    # Return human readable card
    rank = @rank_names[@rank.to_s.to_sym] || @rank.to_s
    suit = @suit.to_s
    suit[0] = suit[0].upcase
    "#{rank} of #{suit}"
  end
end
>>>>>>> d785f49315f21edd5329234273e9431f9c199eea
