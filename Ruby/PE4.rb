=begin

A palindromic number reads the same both ways. The largest palindrome made from the product 
of two 2-digit numbers is 9009 = 91 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=end

def isPalindrome(num)
  numStr = num.to_s
  numStrReverse = numStr.reverse
  return numStr == numStrReverse
end

def findLargestPalindrome
  numA = 0
  numB = 0
  maxSoFar = 0
  
  for firstNum in (900..999)
    for nextNum in (900..999)
      prod = firstNum * nextNum
      if isPalindrome(prod)
        if prod > maxSoFar
          maxSoFar = prod
          numA = firstNum
          numB = nextNum
        end
      end
    end
  end
  
  puts numA.to_s + " * " + numB.to_s + " = " + maxSoFar.to_s + " //our largest palindromic number"
    
end

findLargestPalindrome