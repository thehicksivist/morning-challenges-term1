# The Company is currently wanting to produce another 500 units of product sku 276834, which is a lamp with a circular base. 
# Unfortunately, a staff member forgot to order the plywood to make the base and didn’t account for the cost of this wood.
# Plywood can be purchased in 1200 X 2400 mm sheets at a cost of $28.47 per sheet.
# Each lamp base is a circle with a diameter of 320mm. 
# What is the total cost of ordering the plywood for the bases, and how much plywood is wasted?

<<<<<<< HEAD
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


=======
class PlywoodSheet
    attr_accessor :width, :height, :cost

    def initialize(width, height, cost)
        @width = width
        @height = height
        @cost = cost
    end
    def surface_area
        return @width * @height
    end
    # Calculate how many lamp bases can be cut from this sheet.
    # Returns the number of bases and the surface area wasted.
    def how_many_bases(lamp_base)
        bases_per_sheet = (@width / lamp_base.diameter).to_i * (@height / lamp_base.diameter).to_i
        wastage = self.surface_area - (bases_per_sheet * lamp_base.surface_area)
        return bases_per_sheet, wastage
    end
end

class LampBase
    attr_accessor :radius

    def initialize(diameter)
        @radius = diameter / 2.0
    end
    def diameter
        return @radius * 2
    end
    def surface_area
        return Math::PI * @radius * @radius
    end
end

# main

# ASSUMPTION: Every plywood sheet (including the last one) has the maximum number of bases possible cut from it, even if this yields more than lamp_bases_required bases. The extras are assumed to be stored in a warehouse until needed.
plywood = PlywoodSheet.new(1200, 2400, 28.47)
lamp_base = LampBase.new(320)
lamp_bases_required = 500
# now compute the number of sheets required to have enough wood to make lamp_bases_required bases
# ceil is used to round up to the nearest integer, since we can't buy a fraction of a plywood sheet.
bases_per_sheet, wastage_per_sheet = plywood.how_many_bases(lamp_base)
sheets_required = (lamp_bases_required / bases_per_sheet).ceil
# compute cost and wastage totals
total_cost = sheets_required * plywood.cost
total_wastage = sheets_required * wastage_per_sheet

puts "You will need #{sheets_required} sheets of plywood which will cost a total of $#{total_cost}."
puts "You will waste #{(total_wastage / 1000000).round(3)} sq metres of plywood."
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf
