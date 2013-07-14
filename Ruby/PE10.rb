=begin

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

=end

################################
########    Attempt 2   ########
################################
capacity = 2000000
primes_number_range = Array.new(capacity)
puts primes_number_range.size

for i in (0..capacity)
  primes_number_range[i] = 1
end

primes_number_range[0] = 0
primes_number_range[1] = 0
primes_number_range[capacity] = 0

curr_prime = 2

while ((curr_prime * curr_prime) < capacity)
  k = 2

  while (curr_prime * k < capacity)
    primes_number_range[curr_prime * k] = 0
    k += 1
  end
  
  curr_prime += 1
end

sum = 0
for i in (0..capacity)
  if primes_number_range[i] == 1
    sum += i
  end
end

puts "Sum of all primes less than 2,000,000: #{sum}"

################################
########    Attempt 1   ########
################################

# def is_Prime?(num)
#   for i in $primes_So_Far
#     if (num % i) == 0
#         return false
#     end
#   end 
#   # limit = num / 2
#   #   for i in (2..limit)
#   #     if (num % i) == 0
#   #       return false
#   #     end
#   #   end
#   
#   return true
# end
# 
# def next_prime_after(num)
#   potential_prime = num + 1
#   keep_searching = true
#   while keep_searching
#     if is_Prime?(potential_prime)
#       keep_searching = false
#       return potential_prime
#     end
#     
#     potential_prime += 1
#   end
# end
# 
# def sum_of_all_primes_below_two_million
#   sum = 0
#   curr_prime = 2
#   $primes_So_Far = Array.new
#   
#   while curr_prime < 2000000
#     puts "curr_prime= #{curr_prime} | sum= #{sum}"
#     if is_Prime?(curr_prime)
#       sum += curr_prime
#       $primes_So_Far.push(curr_prime)
#       curr_prime = next_prime_after(curr_prime)
#     end
#   end
#   
#   puts "#{sum}" # ans: 142913828922 
#                 # Time: 49 min on a Macbook (2.66 GHz Intel Core 2 Duo Processor)
# end
# 
# sum_of_all_primes_below_two_million
