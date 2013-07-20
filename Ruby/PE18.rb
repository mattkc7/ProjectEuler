=begin

By starting at the top of the triangle below and moving to adjacent numbers on the row 
below, the maximum total from top to bottom is 23.

3*
7* 4
2 4* 6
8 5 9* 3

That is, 3 + 7 + 4 + 9 = 23.

=end

filename = 'PE18_data.txt'
$triangle = Array.new
$sum = 0

File.open(filename, 'r').each_line do |line|
  line = line.strip.split ' '
  line = line.map{ |s| s.to_i }
  $triangle.push(line)
end

def greedy_path
  index_in_row = 0
  triangle_row_index = 0
  curr_row = $triangle[triangle_row_index]
  sum_so_far = curr_row[index_in_row]
  
  for i in (1..14)
    triangle_row_index += 1
    curr_row = $triangle[triangle_row_index]
    
    if curr_row[index_in_row] > curr_row[index_in_row+1]
      sum_so_far += curr_row[index_in_row+1]
      index_in_row = index_in_row
    else
      sum_so_far += curr_row[index_in_row+1]
      index_in_row = index_in_row+1
    end
  end #end for-loop

  return sum_so_far
end

def dynamic_approach(row, index_in_row)
  if row > 14
    return 0
  else
    curr_row = $triangle[row] 
    
    if index_in_row >= curr_row.length
      index_in_row = curr_row.length - 1
    end
    
    return curr_row[index_in_row] + [dynamic_approach(row+1, index_in_row), dynamic_approach(row+1, index_in_row+1) ].max
  end
end

puts "Greedy approach gets us: #{greedy_path}"
puts "Recursive approach gets us: #{dynamic_approach(0,0)}" #ans: 1074