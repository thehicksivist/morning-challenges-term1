# You get any card as an argument. Your task is to return a suit of this card.

# eg:

# ('3C') -> return 'clubs'
# ('3D') -> return 'diamonds'
# ('3H') -> return 'hearts'
# ('3S') -> return 'spades'

def define_suit(card)
  # you can reference the character of a string with [index]
  suit = card[-1]
  # check the case of suit which comes with the card listed
  case suit
  when 'C'
    'clubs'
  when 'D'
    'diamonds'
  when 'H'
    'hearts'
  when 'S'
    'spades'
  end
end

