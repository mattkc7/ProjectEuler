=begin

Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

See file PE13_data.txt

=end

filename = 'PE13_data.txt'
sum = 0

File.open(filename, 'r').each_line do |line|
  big_num = line.to_i
  sum += big_num
end

puts "First 10 digits of the sum is #{sum.to_s[0..9]}" # ans: 5537376230