=begin

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters 
used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 
(one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

=end

$units = ["hundred", "thousand"]
$one_to_nine = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
$eleven_to_nineteen = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
$round_nums = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

def word_version(num)
  if num == 10
    return $round_nums[0]
  end
  if num > 10 and num < 20
    return $eleven_to_nineteen[ (num % 10) - 1]
  end
  
  if num < 10
    return $one_to_nine[num-1]
  elsif num < 20
    return $round_nums[(num%10)-1]
  else
    
  end
end

def get_str_version_of(num)
  str_num = ""
  if num == 1000
    return "one thousand"
  end
  if num <= 10
    str_num = str_num << " " << word_version(num)
  elsif num > 10 and num < 20
    str_num = str_num << " " << word_version(num)
  elsif num < 100
    tens_digit = num / 10
    ones_digit = num % 10
    str_num = str_num << $round_nums[tens_digit-1] << " " 
    if ones_digit > 0
      str_num = str_num << " "<< $one_to_nine[ones_digit-1]
    end
  elsif num < 1000
    huns_digit = num / 100
    num = num % 100
    str_num = str_num << word_version(huns_digit) << " " << $units[0]
    check_for_teens = num % 100
    
    if check_for_teens > 10 and check_for_teens < 20
      str_num = str_num << " and " << $eleven_to_nineteen[(check_for_teens % 10) - 1]
    elsif check_for_teens < 10 and check_for_teens > 0
      str_num = str_num << " and " << $one_to_nine[check_for_teens - 1]
    else
      tens_digit = num / 10
      if tens_digit > 0
        str_num = str_num << " and " << $round_nums[tens_digit-1]
      end
    
      ones_digit = num % 10
      if ones_digit > 0
        str_num = str_num << " " << $one_to_nine[ones_digit-1]
      end
    end
  end
  
  return str_num
end

def get_len(str)
  return str.delete(" ").length
end

def letter_count_of_numbers
  count = 0
  for i in (1..1000)
    curr_num = get_str_version_of(i)
    puts curr_num
    curr_num_len = get_len(curr_num)
    count += curr_num_len
  end
  
  return count
end

puts "Count is #{letter_count_of_numbers}"