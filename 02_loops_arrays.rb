<<<<<<< HEAD
# PART 1
=======
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf
# - create a well named variable that contains the amount of time it took you to get to class
# - create a complete sentence  that lets us know how you got to class and how long it took
# - print this complete sentence

<<<<<<< HEAD
puts "CHALLENGE 02 PART 1"

time_to_class = "1 hour"
method_of_travel = "train"
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
=======
# you are working at a bar where you have a current backlog of drinks to make:
# 3 cocktails
# 2 waters
# and
# 6 beers

# write a program that asks the customer for their order.
# if they order a cocktail, add one to the number of cocktails you need to make,
# if they order a water, add one to the number of waters you need to make,
# if they order a beer, add one to the number of beers you need to pour
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf

# print the final drinks order so you know what to make

# ****
# cocktails sell for $22, and cost $8 to make
# beer sell for $12, and cost $3 to pour
# water sell for $6, and cost $0.15 to make

<<<<<<< HEAD
# print out the total profit for the orders you have

puts "CHALLENGE 02 PART 2"

# example nesting to refactor below
# patients = [
#     {patient: [{username:"John",password:"123John",dob:"21/02/1990",age:"25",date:"19/02/2018",illness:"Flue",treatment: "Panadol Rapid" }]}, 
#     {patient: [{username:"Sara",password:"123Sara",dob:"01/02/1995",age:"28",date:"19/06/2018",illness:"",treatment: "" }]}]

backlog = { :cocktail => 3, :water => 2, :beer => 6 }

        puts "What would you like to order?"
        puts "1)Cocktail \n2)Water \n3)Beer"
        order = gets.chomp
        if order.to_s == "1"
            backlog[:cocktail] += 1
            puts "#{backlog[:cocktail]}"
        elsif order.to_s == "2"
            backlog[:water] += 1
            puts "#{backlog[:water]}"
        elsif order.to_s == "3"
            backlog[:beer] += 1
            puts "#{backlog[:beer]}"
        else
            puts "Sorry, that's not an option"
        end

 sell_price = { :cocktail => 22, :water => 6, :beer => 12 }
 cost_price = { :cocktail => 8, :water => 1, :beer => 3 }

 puts "The current orders are: #{backlog}"

 cocktail_order = backlog[:cocktail] * sell_price[:cocktail] - cost_price[:cocktail]
 water_order = backlog[:water] * sell_price[:water] - cost_price[:water]
 beer_order = backlog[:beer] * sell_price[:beer] - cost_price[:beer]
 total_order = (cocktail_order) + (water_order) + (beer_order)

 puts "Total order profit is: $#{total_order}"
=======
# print out the total profit for the orders you have
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf
