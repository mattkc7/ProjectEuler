=begin

n! means n  (n  1)  ...  3  2  1

For example, 10! = 10  9  ...  3  2  1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!

=end

factorial = 100
product = 1

while factorial > 1
  product = factorial * product
  factorial -= 1
end

product = product.to_s
sum = 0
product.each_char { |c| sum += c.to_i }
puts sum