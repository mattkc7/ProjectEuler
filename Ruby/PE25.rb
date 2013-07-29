state = true
fib1 = 1
fib2 = 1
term = 2
while state
  fib_sum = fib1 + fib2
  term += 1
  if fib_sum.to_s.length == 1000
    state = false
    puts term
  end
  
  fib1 = fib2
  fib2 = fib_sum
end