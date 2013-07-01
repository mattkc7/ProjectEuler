# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?

def largestPrimeFactorOf(num)
  primeFactors = []
  currPrime = 2
  
  puts "The largest prime factor of " + num.to_s + " is... "
  while num > 1
    if (num % currPrime) == 0
      primeFactors.push(currPrime)
      num /= currPrime
    end
    
    currPrime = getNextPrimeAfter(currPrime)
  end
  
  puts primeFactors.last.to_s
end
      

def isPrime (num)
  i = 2
  while i <= (num/2)
    if (num % i) == 0 
      #puts num.to_s + " is NOT a prime"
      return false
    end
    i += 1
  end
  
  #puts num.to_s + " is a prime!"
  return true
end

def getNextPrimeAfter(num)
  potentialPrime = num + 1
  while true
    if isPrime(potentialPrime)
      #puts potentialPrime.to_s + " is the next prime after " + num.to_s
      return potentialPrime
    else
      potentialPrime += 1
    end
  end
end

largestPrimeFactorOf(600851475143)




