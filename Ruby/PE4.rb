=begin

A palindromic number reads the same both ways. The largest palindrome made from the product 
of two 2-digit numbers is 9009 = 91 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=end

def is_palindrome?(num)
  num_str = num.to_s
  num_str_reverse = num_str.reverse
  return num_str == num_str_reverse
end

def find_largest_palindrome
  num_a = 0
  num_b = 0
  max_so_far = 0
  
  for first_num in (900..999)
    for next_num in (900..999)
      prod = first_num * next_num
      if is_palindrome?(prod)
        if prod > max_so_far
          max_so_far = prod
          num_a = first_num
          num_b = next_num
        end
      end
    end
  end
  
  puts num_a.to_s + " * " + num_b.to_s + " = " + max_so_far.to_s + " //our largest palindromic number"
    
end

find_largest_palindrome