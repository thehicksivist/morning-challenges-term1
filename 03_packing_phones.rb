# 1. sit beside someone different in a different spot from yesterday

# 2. A business called “The Company” created a new phone called the companyPhone that needs packing to send away for sale. 
# The Company needs to know how many phones in their pretty new packaging (rectangular prisms) that measures: with  width 5cm, 
# length 7.4cm, and depth 4cm we can fit into a box that is 32cm wide,  43cm long and 22.1cm high.   (think about writing some 
#     pseudo code first that steps through all the commands you need to write. Keep it as simple as you can - this is not a 
#     ‘bin packing’ problem)

box_size = {:width => 32.0, :length => 43.0, :depth => 22.1}
phone_size = {:width => 5.0, :length => 7.4, :depth => 4.0}

box_vol = box_size[:width] * box_size[:length] * box_size[:depth]
phone_vol = phone_size[:width] * phone_size[:length] * phone_size[:depth]

amount_to_pack = box_vol / phone_vol

puts "You can fit #{amount_to_pack.to_i} phones in a single box."
