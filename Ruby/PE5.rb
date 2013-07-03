=begin

2520 is the smallest number that can be divided by each of the numbers from 
1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the 
numbers from 1 to 20?

=end

def divisible_by_range(num)
  for i in (2..20)
    if (num % i) != 0
      return false
    end
  end
  puts "We just found it: " + num.to_s
  return true
end

def find_target
  target = 21
  state = true
  while state 
    if divisible_by_range(target)
      state = false
      return
    end
  
    target += 1
  end
end

find_target

    