# PART 1
# - create a well named variable that contains the amount of time it took you to get to class
# - create a complete sentence  that lets us know how you got to class and how long it took
# - print this complete sentence

puts "CHALLENGE 02 PART 1"

#declare variables with naming convention that is easy to understand
time_to_class = "1 hour"
method_of_travel = "train"
#use interpolation to insert the variable values into the string onscreen
puts "This morning I got to class by #{method_of_travel}. It took me #{time_to_class}."
puts

# PART 2
# you are working at a bar where you have a current backlog of drinks to make:
#  3 party parrot cocktails
# 2 party parrot waters
# and
# 6 party parrot beers

# write a program that asks the customer for their order.
# if they order a party parrot cocktail, add one to the number of party parrot cocktails you need to make,
# if they order a party parrot water, add one to the number of party parrot waters you need to make,
# if they order a party parrot beer, add one to the number of party parrot beers you need to pour

# print the final drinks order so you know what to make

# ****
# cocktails sell for $22, and cost $8 to make
# beer sell for $12, and cost $3 to pour
# water sell for $6, and cost $0.15 to make

# print out the total profit for the orders you have

puts "CHALLENGE 02 PART 2"

# example nesting to refactor below
# patients = [
#     {patient: [{username:"John",password:"123John",dob:"21/02/1990",age:"25",date:"19/02/2018",illness:"Flue",treatment: "Panadol Rapid" }]}, 
#     {patient: [{username:"Sara",password:"123Sara",dob:"01/02/1995",age:"28",date:"19/06/2018",illness:"",treatment: "" }]}]

#refactor setting drinks as hash, with nested hashes holding values
drinks = { cocktail: {sell: 22, cost: 8, backlog: 3}, 
           water: {sell: 6, cost: 1, backlog: 2}, 
           beer: {sell: 12, cost: 3, backlog: 6}}

#variabes to access the backlogs regularly --> makes me think only sell and cost need to be in hash...
cocktail_order = drinks[:cocktail][:backlog]
water_order = drinks[:water][:backlog]
beer_order = drinks[:beer][:backlog]

loop do
        puts "What would you like to order?"
        puts "1)Cocktail \n2)Water \n3)Beer \n4)Nothing"
        order = gets.chomp
        if order.to_s == "1"
            cocktail_order += 1            
            puts "Cocktails ordered = #{cocktail_order}"
        elsif order.to_s == "2"
            water_order += 1            
            puts "Water ordered = #{water_order}"
        elsif order.to_s == "3"
            beer_order += 1
            puts "Beers ordered = #{beer_order}"
        elsif order.to_s == "4"
            break
        else
            puts "Sorry, that's not an option"
        end
end
 puts "Ordered: Cocktails = #{cocktail_order}, Waters = #{water_order}, Beers = #{beer_order}"

 cocktail_total = cocktail_order * drinks[:cocktail][:sell] - drinks[:cocktail][:cost]
 water_total = water_order * drinks[:water][:sell] - drinks[:water][:cost]
 beer_total = beer_order * drinks[:beer][:sell] - drinks[:beer][:cost]
 total_order = (cocktail_total) + (water_total) + (beer_total)

 puts "Total order profit is: $#{total_order}"


#ORIGINAL SOLVE BELOW

# backlog = { :cocktail => 3, :water => 2, :beer => 6 }
# sell_price = { :cocktail => 22, :water => 6, :beer => 12 }
# cost_price = { :cocktail => 8, :water => 1, :beer => 3 }

#         puts "What would you like to order?"
#         puts "1)Cocktail \n2)Water \n3)Beer"
#         order = gets.chomp
#         if order.to_s == "1"
#             backlog[:cocktail] += 1
#             puts "#{backlog[:cocktail]}"
#         elsif order.to_s == "2"
#             backlog[:water] += 1
#             puts "#{backlog[:water]}"
#         elsif order.to_s == "3"
#             backlog[:beer] += 1
#             puts "#{backlog[:beer]}"
#         else
#             puts "Sorry, that's not an option"
#         end

#  puts "The current orders are: #{backlog}"

#  cocktail_order = backlog[:cocktail] * sell_price[:cocktail] - cost_price[:cocktail]
#  water_order = backlog[:water] * sell_price[:water] - cost_price[:water]
#  beer_order = backlog[:beer] * sell_price[:beer] - cost_price[:beer]
#  total_order = (cocktail_order) + (water_order) + (beer_order)

#  puts "Total order profit is: $#{total_order}"
 
 
 
