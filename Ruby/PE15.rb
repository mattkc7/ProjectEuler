=begin

Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20×20 grid?

=end

def combination_n_choose_p(n, p)
  prod_n =  1
  prod_p = 1
  limit = n-p+1
  
  while n >= limit
    prod_n = prod_n * n
    n = n - 1
  end
  
  while p > 1
    prod_p = prod_p * p
    p = p - 1
  end
  puts "prod_n is #{prod_n} and prod_p is #{prod_p}"
  return prod_n / prod_p
end
    
puts "The number of routes in a 20x20 grid is (width+height) choose width. Hence, the answer is: #{combination_n_choose_p(40, 20)}"