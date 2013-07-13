=begin

A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

=end

seen = false
for a in 1..1000 do
   for b in 1..1000 do
      aa = a ** 2
      bb = b ** 2
      cc = aa + bb
      c = Math.sqrt(cc)
      if (a + b + c) == 1000
        if seen == false
          puts "a = #{a}, b = #{b}, c = #{c}"
          puts "a*b*c = #{a*b*c}" #ans: 31,875,000.0
          seen = true
        end
      end
   end
end