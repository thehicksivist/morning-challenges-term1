# Maze Runner

# Introduction
#      Welcome Adventurer. Your aim is to navigate the maze and reach the finish point without
#      touching any walls. Doing so will kill you instantly!

# Task
#      You will be given a 2D array of the maze and an array of directions.
#      Your task is to follow the directions given.
#      If you reach the end point before all your moves have gone, you should return Finish.
#      If you hit any walls or go outside the maze border, you should return Dead.
#      If you find yourself still in the maze after using all the moves, you should return Lost.

# The Maze array will look like

# maze = [[1,1,1,1,1,1,1],
#         [1,0,0,0,0,0,3],
#         [1,0,1,0,1,0,1],
#         [0,0,1,0,0,0,1],
#         [1,0,1,0,1,0,1],
#         [1,0,0,0,0,0,1],
#         [1,2,1,0,1,0,1]]

#         ..with the following key

#         0 = Safe place to walk
#         1 = Wall
#         2 = Start Point
#         3 = Finish Point

# Rules
#     1. The Maze array will always be square i.e. N x N
#     2. The start and finish positions could be anywhere in the maze
#     3. The directions array will always be in upper case and will be in the format of:
#         N = North, E = East, W = West and S = South. (North is assumed to be the top)

# Good luck, and stay safe!

class Maze
    # List of valid moves, each mapped to a row and column offset hash
    # eg. moving north means going up one row (-1 rows, 0 columns) in the maze array
    @@valid_moves = {
        'N': { row: -1, col: 0 },
        'S': { row: 1, col: 0 },
        'E': { row: 0, col: 1 },
        'W': { row: 0, col: -1 }
    }

    def initialize(maze)
<<<<<<< HEAD
        @status = "playing"
        Matrix[(maze)]
        puts "#{maze}"
            #0 = Safe place to walk
        @path = maze
            # 1 = Wall
        @wall = maze
            # 2 = Start Point
        @start = maze
            # 3 = Finish Point
        @finish = maze
        
    end
    def walk(moves)
        moves =[up, down, left, right]
        
    end
    def can_move?(direction)
        # if @status =
=======
        @maze = maze
        # Find the start location (element with value 2)
        # First find the row that includes the value 2
        start_row = maze.find { |row| row.include?(2) }
        # Construct player position hash from column and row indexes
        @player_position = { col: start_row.index(2), row: maze.index(start_row) }
    end
    def walk(moves)
        for move in moves do
            # Convert move to symbol so we can use it to reference @@valid_moves
            move = move.to_sym
            # Ignore invalid moves
            if @@valid_moves[move]
                # Adjust the player position according to the direction moved
                @player_position[:col] += @@valid_moves[move][:col]
                @player_position[:row] += @@valid_moves[move][:row]
                # Get the value at the new location in the maze
                # This will fail if we're outside the maze, triggering the rescue clause
                value = @maze[@player_position[:row]][@player_position[:col]]
                # Hit a wall?
                return 'Dead' if value == 1
                # Reached the exit?
                return 'Finish' if value == 3
            end
        end
        # If we didn't finish or die, then we're lost!
        'Lost'
    rescue
        'Dead'
>>>>>>> 19cb0abbbb65d615711988564ae54d46d1ac4129
    end
end

maze = Maze.new([
            [1,1,1,1,1,1,1],
            [1,0,0,0,0,0,3],
            [1,0,1,0,1,0,1],
            [0,0,1,0,0,0,1],
            [1,0,1,0,1,0,1],
            [1,0,0,0,0,0,1],
            [1,2,1,0,1,0,1]
        ])
maze