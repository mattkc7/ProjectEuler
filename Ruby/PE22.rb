=begin

Using names.txt (right click and 'Save Link/Target As...'), a 46K text file 
containing over five-thousand first names, begin by sorting it into alphabetical 
order. Then working out the alphabetical value for each name, multiply this value 
by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 
3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a 
score of 938  53 = 49714.

What is the total of all the name scores in the file?

=end

file = File.open("PE22_data.txt", "r")
data = file.read
file.close

$letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
$letters_val = Hash[$letters.map.with_index.to_a]

data = data.split(",")
data = data.sort

def name_value(name)
  value = 0
  name.each_char { |c| 
    if c != "\"" #strip the double quotes
      value = value + $letters_val[c] + 1
    end
  }
  return value
end

sum = 0
data.each_with_index {
  |name, index| 
  name_x = name.gsub /"/, ''
  puts name_x
  sum += (name_value(name_x) * (index+1)) 
  }

puts sum # ans: 871198282