class Card

    attr_reader :suit, :rank 

    def initialize(suit, rank)
        # Create a new card
        @suit = suit
        @rank = rank
        @card = "#{@rank} of #{@suit}"
    end
    
    def face_card?
        # Is the card a face card (above 10)?
        if @rank.to_i <= 10 && @rank.to_i > 1
            false
        else
            true
        end
    end 
    
    def to_s
        # Return human readable card
        case @rank
        when 1
            name = "Ace"
        when 13
            name = "King"
        when 12
            name = "Queen"
        when 11
            name = "Jack"
        else
            name = @rank.to_s
        end
        suit = @suit.capitalize
        return "#{name} of #{suit}"
    end
end

# TESTS BELOW
# card = Card.new("Hearts", "Queen")
# puts card.to_s
# card = Card.new("Hearts", 10)
# puts card.to_s