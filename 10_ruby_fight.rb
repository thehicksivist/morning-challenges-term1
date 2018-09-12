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
        def initialize(name, health, power)
            @name = name
            @health = health
            @power = power
        end
    def is_alive
        self.health > 0
    end
    def def_hits
    end
    def player_info
        player_info = [@name, @health, @power]
    end
end

def fight
end

player1 = Player.new("johnno", 100, 100)
player2 - Player.new("janey", 100, 100)
print "player1 = #{player1.player_info}"
