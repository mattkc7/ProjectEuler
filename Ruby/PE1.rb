# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.

i = 1
sumSoFar = 0

while i < 1000
  mod_three = ((i % 3) == 0)
  mod_five = ((i % 5) == 0)
  
  if mod_three or mod_five
    sumSoFar += i
  end
  i += 1
end

puts "Sum of all the multiples of 3 or 5 below 1000: " + sumSoFar.to_s
