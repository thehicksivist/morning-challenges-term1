# The Company has two directors who are passionately disagreeing, they want to fight it out. Being the fantastic human you are, 
# you propose creating a virtual fight to minimise physical harm. You need to create a simple fighting game, where two opponents 
# will fight until one of them loses.

# Hints: start by creating a Player class (the instance variables could be name, health and power).
# You’ll need a few methods, consider one that keeps track of whether a player is alive, another one that calculates the impact 
# of hits (decreases the opponents heath by the the amount of the other players power). And a third that outputs the players information.

# You’ll then need to make a fight method that uses a loop to make the players hit one another until the is_alive method returns 
# false for one of them. When the loop is finished (which would mean one of the players has lost), show the players output.

# Then create two Player objects (create a random value for each player’s health and power, make is so that the maximum health value 
# for a player is 200, and the maximum power value is 25) and call the fight method.

class Player
    attr_accessor :name, :health, :power
    def initialize(name, health, power)
            @name = name
            @health = health
            @power = power
    end
    def is_alive
        @health > 0
        return true
    end
    def impact_of_hits(opponent)
        opponent.health - @power
    end
    def player_info
        player_info = [@name, @health, @power]
        puts "#{player_info}"
    end
end



def fight(player1, player2)
    while player1.is_alive == true && player2.is_alive == true
        Player.impact_of_hits(player1)
        Player.impact_of_hits(player2)
    end
    puts Player.player_info
end

player1 = Player.new("johnno", rand(100..200), rand(10..25))
player2 = Player.new("janey", rand(100..200), rand(10..25))

fight(player1, player2)
