=begin

2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?


=end

big_num = 2 ** 1000
sum = 0

while big_num > 0
  ones_digit = big_num % 10
  big_num /= 10
  sum += ones_digit
end

puts sum # ans: 1366