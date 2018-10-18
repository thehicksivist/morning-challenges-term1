# 1. sit beside someone new, at a new spot :slightly_smiling_face:

<<<<<<< HEAD
# 2. There is an odd employee at The Company who needs some code written that will provide them with 
# the first 100 numbers of the Fibonacci sequence ….. (no one really knows why the odd employee needs 
#     this information - or why they can’t work it out themselves - but Monday mornings can be strange).

seq1 = 0
seq2 = 1

while seq1 < 100
    puts seq1
    puts seq2
    seq1 += seq2
    seq2 += seq1
end

#FIRST SOLVE BELOW... OVER COMPLICATED!!

# num = {:num1 => 0, :num2 => 1}
# puts num[:num1]
# puts num[:num2]

# while num[:num2] < 100
#     num3 = num[:num1] + num[:num2]
#     num[:num1] = num[:num2]
#     num[:num2] = num3
#     if num3 > 100
#         break
#     end
#     puts "#{num3}"
# end
    
=======
# 2. There is an odd employee at The Company who needs some code written that will provide them with the first 100 numbers of the Fibonacci sequence ….. (no one really knows why the odd employee needs this information - or why they can’t work it out themselves - but Monday mornings can be strange).

# Generate and return the first 'count' values in the Fibonacci sequence
def fib(count)
    fib_sequence = [1, 1]
    count.times do |n|
        fib_sequence << fib_sequence[n] + fib_sequence[n+1]
    end
    return fib_sequence
end

puts fib(100)
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf
