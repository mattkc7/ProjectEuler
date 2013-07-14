=begin

In the 20 x 20 grid below, four numbers along a diagonal line have been marked in red.

The product of these numbers is 26 * 63 * 78 * 14 = 1,788,696.

What is the greatest product of four adjacent numbers in the same 
direction (up, down, left, right, or diagonally) in the 20 x 20 grid?

=end

###################################################################
#######                                                  ##########
#######    Open the data file to build 20 x 20 grid      ##########
#######                                                  ##########
###################################################################

filename = 'PE11_data.txt'
$grid_of_numbers = Array.new

File.open(filename, 'r').each_line do |line|
  line = line.strip.split ' '
  line = line.map{ |s| s.to_i }
  $grid_of_numbers.push(line)
end

###################################################################
#######                                                  ##########
#######        Find the largest product in a row         ##########
#######                                                  ##########
###################################################################
def left_to_right_helper(arr)
  largest_prod_so_far = 0
  nums = []
  for num in (1..16)
    curr_prod = arr[num] * arr[num + 1] * arr[num + 2] * arr[num + 3]
    if curr_prod > largest_prod_so_far
      largest_prod_so_far = curr_prod
      nums = [arr[num] , arr[num + 1] , arr[num + 2] , arr[num + 3]]
    end
  end
  
  return largest_prod_so_far
end

###################################################################
#######                                                  ##########
#######          Left to right per row approach          ##########
#######                                                  ##########
###################################################################
def left_to_right_approach
  largest_prod_of_all_rows = 0
  for each_row in (0..19)
    curr_largest_prod_in_row = left_to_right_helper($grid_of_numbers[each_row])
    if curr_largest_prod_in_row > largest_prod_of_all_rows
      largest_prod_of_all_rows = curr_largest_prod_in_row
    end
  end
  
  return largest_prod_of_all_rows
end


###################################################################
#######                                                  ##########
#######          Top to bottom per col approach          ##########
#######                                                  ##########
###################################################################
def top_to_bottom_approach
  largest_prod_of_all_cols = 0
  for each_row in (0..15)
    for each_col in (0..19)
      curr_prod_in_col = $grid_of_numbers[each_row][each_col] * $grid_of_numbers[each_row + 1][each_col] * $grid_of_numbers[each_row + 2][each_col] * $grid_of_numbers[each_row + 3][each_col]
      if curr_prod_in_col > largest_prod_of_all_cols
        largest_prod_of_all_cols = curr_prod_in_col
      end
    end
  end
  
  return largest_prod_of_all_cols
end


###################################################################
#######        Diagonal                                  ##########
#######        Top right to bottom left approach         ##########
#######                                                  ##########
###################################################################
def left_to_diagonal_right_approach
  largest_prod = 0
  for each_row in (0..15)
    for each_col in (0..15)
      a = $grid_of_numbers[each_row][each_col]
      b = $grid_of_numbers[each_row+1][each_col+1]
      c = $grid_of_numbers[each_row+2][each_col+2]
      d = $grid_of_numbers[each_row+3][each_col+3]

      curr_prod = a*b*c*d
      if curr_prod > largest_prod
        largest_prod = curr_prod
      end
    end
  end
  
  return largest_prod
end

###################################################################
#######        Diagonal                                  ##########
#######        Top left to bottom right approach         ##########
#######                                                  ##########
###################################################################
def right_to_diagonal_left_approach
  largest_prod = 0

  for each_row in (0..15)
    for col in (0..19)
      each_col = 19 - col
      a = $grid_of_numbers[each_row][each_col]
      b = $grid_of_numbers[each_row+1][each_col-1]
      c = $grid_of_numbers[each_row+2][each_col-2]
      d = $grid_of_numbers[each_row+3][each_col-3]
      #puts "#{a} #{b} #{c} #{d}"
      curr_prod = a*b*c*d
      if curr_prod > largest_prod
        largest_prod = curr_prod
      end
    end
  end
  
  return largest_prod
end


puts "top_to_bottom_approach: #{top_to_bottom_approach}"
puts "left_to_right_approach: #{left_to_right_approach}"
puts "left_to_diagonal_right: #{left_to_diagonal_right_approach}"
puts "right_to_diagonal_left: #{right_to_diagonal_left_approach}" #ans: 70600674
  
  
  
  
  
  
  
  
  
  
  
  
  