=begin

The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)^2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

=end

def sum_of_squares
  sum = 0
  for i in (1..100)
    ii = i**2
    sum += ii
  end
  return sum
end

def square_of_sum
  sum = (100*101) / 2
  return sum**2
end

puts sum_of_squares
puts square_of_sum
puts "Difference between sum_of_squares and square_of_sum is #{-(sum_of_squares - square_of_sum)}"