<<<<<<< HEAD
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
=======
# 1. If you're sitting next to the same person you sat next
#    to yesterday, go sit next to someone else.
#
# 2. A business called “The Company” created a new phone called 
#    the companyPhone that needs packing to send away for sale. 
#
#    The companyPhone in its pretty new packaging 
#    (rectangular prism) measures as follows: 
#       width: 5cm
#       length: 7.4cm 
#       depth: 4cm 
#
#    The Company need to know how many of the phones in
#    the new packaging can fit into a box that measures:
#       width: 32cm
#       length: 43cm 
#       height: 22.1cm 
#
#    Think about writing some pseudo code first that steps 
#    through all the commands you need to write. 
#
#    Keep it as simple as you can.

phone = [5, 7.4, 4]
box = [32, 43, 22.1]

max_phones = 0
phone.permutation do |orient|
    print orient
    puts
    num_phones = (box[0] / orient[0]).to_i * (box[1] / orient[1]).to_i * (box[2] / orient[2]).to_i
    max_phones = num_phones if num_phones > max_phones
end

puts max_phones
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf
