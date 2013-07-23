=begin

You are given the following information, but you may prefer to do some research 
for yourself.

- 1 Jan 1900 was a Monday.
- Thirty days has September,
 April, June and November.
-All the rest have thirty-one,
-Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.

A leap year occurs on any year evenly divisible by 4, but not on a century unless 
it is divisible by 400.

How many Sundays fell on the first of the month during the twentieth century 
(1 Jan 1901 to 31 Dec 2000)?

=end

def count_sundays_in_century
  curr_month = 1
  curr_day = 1
  curr_yr = 1901
  sunday_count = 0
  
  while curr_yr <= 2000
    while curr_month <= 12
      tmp_day = Time.new(curr_yr, curr_month, 1)
      if tmp_day.sunday?
        sunday_count += 1
      end
      curr_month += 1
    end
    
    curr_month = 1
    curr_yr += 1
  end #end while-loop
  
  return sunday_count
end

puts "Total Sundays that fell on the first of the month in the 20th Century: #{count_sundays_in_century}"
# ans: 171

  
  
  
  
  
  
  
  
  
  
  
  