=begin

The following iterative sequence is defined for the set of positive integers:

n -> n/2 (n is even)
n -> 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13  40  20  10  5  16  8  4  2  1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.

=end

def handle_odd_num(n)
  return (3*n) + 1
end

def handle_even_num(n)
  return n/2
end

def generate_chain_len(start)
  chain = []
  while start != 1
    if start % 2 == 0
      next_num = handle_even_num(start)
    else
      next_num = handle_odd_num(start)
    end
    chain.push(next_num)
    start = next_num
  end # end while-loop
  #puts "#{start}: #{chain}"
  return chain.size
end

def collatz_problem
  max_so_far = 0
  value = 0
  
  for i in (1..1000000)
    target_num = 1000000 - i
    if target_num == 0
      break
    end
    puts "......#{target_num}"
    curr_chain_len = generate_chain_len(target_num)
    
    if curr_chain_len > max_so_far
      max_so_far = curr_chain_len
      value = target_num
    end
  end
  
  return value
end

puts "Starting number that yields the longest chain is #{collatz_problem}" # ans: 837799


