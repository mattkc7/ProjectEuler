=begin

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see 
that the 6th prime is 13.

What is the 10 001st prime number?

=end

def is_Prime (num)
  i = 2
  while i <= (num/2)
    if (num % i) == 0 
      return false
    end
    i += 1
  end
  
  return true
end

def get_Next_Prime_After(num)
  potential_Prime = num + 1
  while true
    if is_Prime(potential_Prime)
      return potential_Prime
    else
      potential_Prime += 1
    end
  end
end

def get_10001st_Prime_Num
  counter = 6
  curr_Prime = 13
  
  while counter < 10001
    curr_Prime = get_Next_Prime_After(curr_Prime)
    counter += 1
  end
  
  puts curr_Prime.to_s + " is the 1001st prime! "
end

get_10001st_Prime_Num
