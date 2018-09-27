# You just got done writing a function that calculates the player's final score
# for your new game.
#
# Now all you need is a high score table that can be updated with the player's final scores.
# With such a feature, the player will be motivated to try to beat his previous scores,
# and hopefully, never stop playing your game.
#
# The high score table will start out empty.
# A limit to the size of the table will be specified upon creation of the table.
#
# Here's an example of the expected behavior of the high score table :
#
# highScoreTable = HighScoreTable(3)
# highScoreTable.scores == [] # evaluates to True
# highScoreTable.update(10)
# highScoreTable.scores == [10]
# highScoreTable.update(8)
# highScoreTable.update(12)
# highScoreTable.update(5)
# highScoreTable.update(10)
# highScoreTable.scores == [12, 10, 10]
# highScoreTable.reset()
# highScoreTable.scores == []
# # And so on...

# FIRST SOLUTION
class HighScoreTable
  # your code here
  def initialize
        @scores = []
  end

  def scores
    puts "#{@scores}"
  end

  def update(score)
      m = @scores.index(@scores.min)
    if @scores.length < 3
      @scores << score
      @scores.sort! {|x, y| y <=> x}
      return
    end
    if @scores.length <= 3 && score > @scores.min
      @scores[@scores.index(@scores.min)] = score
      @scores.sort! {|x, y| y <=> x}
    end
  end

  def reset()
    @scores = []
  end
end

highScoreTable = HighScoreTable.new
puts highScoreTable.scores
# [] # evaluates to True
highScoreTable.update(10)
puts highScoreTable.scores
# [10]
highScoreTable.update(8)
puts highScoreTable.scores
highScoreTable.update(12)
puts highScoreTable.scores
highScoreTable.update(5)
highScoreTable.update(10)
puts highScoreTable.scores
# [12, 10, 10]
highScoreTable.update(15)
puts highScoreTable.scores
highScoreTable.reset()
puts highScoreTable.scores 
# [] # evaluates to True
