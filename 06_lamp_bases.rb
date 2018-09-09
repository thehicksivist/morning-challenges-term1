# The Company is currently wanting to produce another 500 units of product sku 276834, which is a lamp with a circular base. 
# Unfortunately, a staff member forgot to order the plywood to make the base and didn’t account for the cost of this wood.
# Plywood can be purchased in 1200 X 2400 mm sheets at a cost of $28.47 per sheet.
# Each lamp base is a circle with a diameter of 320mm. 
# What is the total cost of ordering the plywood for the bases, and how much plywood is wasted?

pi = 3.14
area_of_square = 320*320
area_of_circle = pi*160*160
area_of_ply = 1200*2400
cost_of_ply = 28.47

puts "pi = #{pi}"
puts "aos = #{area_of_square}"
puts "aoc = #{area_of_circle}"
puts "aop = #{area_of_ply}" # = 2880000mm^2

base_per_sheet = area_of_ply / area_of_square
puts "bps = #{base_per_sheet}" # = 28

wastage_per_sheet = (area_of_square - area_of_circle) * 28
puts "wps = #{wastage_per_sheet}" # = 616448mm^2

sheets_required = 500 / 28
puts "sheets required = #{sheets_required}"

total_cost = sheets_required * 28.47
puts "total cost = #{total_cost}"

area_of_wastage = sheets_required * wastage_per_sheet
puts "area_of_wastage = #{area_of_wastage}"

sheets_of_wastage = area_of_wastage / area_of_ply
puts "sheets_of_wastage = #{sheets_of_wastage}"

cost_of_wastage = sheets_of_wastage * 28.47
puts "cost_of_wastage = #{cost_of_wastage}"


