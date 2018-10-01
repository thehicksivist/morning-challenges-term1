class Card
    def initialize(suit, rank)
        # Create a new card
        @suit = suit.capitalize
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
        when face_card? == true
        case @rank == 1
            @rank = "Ace"
        case @rank == 13
            @rank = "King"
        case @rank == 12
            @rank = "Queen"
        case @rank == 11
            @rank = "Jack"
        end
    end
end

card = Card.new("Hearts", "Queen")
# puts "#{card}"
card = Card.new("Hearts", 10)
# puts "#{card}"