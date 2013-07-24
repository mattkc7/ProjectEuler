=begin

Let d(n) be defined as the sum of proper divisors of n (numbers less than n which 
divide evenly into n).
If d(a) = b and d(b) = a, where a != b, then a and b are an amicable pair and each 
of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 
110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so 
d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.

=end

def d(n)
  sum = 0
  for i in (1..n/2)
    if n % i == 0
      #puts i
      sum += i
    end
  end  
  
  return sum
end

def sum_of_amicable_nums_under_1000
  sum = 0
  for a in (1..10000)
    # If d(a) = b and d(b) = a, where a != b, then a and b are an amicable pair
    # b == d(a)
    # a == d(b)
    b = d(a)

    if b > a and d(b) == a
      sum = sum + b + a
    end
  end
  
  return sum
end

puts "Ans is #{sum_of_amicable_nums_under_1000}"












