# Pad an Array

# I worked on this challenge Parminder Singh

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode 

# What is the input? array, a minimum size (non-negative integer) for the array, and an optional argument of what the array should be "padded"

# What is the output?(i.e. What should the code return?)new array padded with the pad value up to the minimum size.

# What are the steps needed to solve the problem?
# 1. Define method that takes in an array, min_siz, value
# 2. Define variable that is the difference between min_size and array length
# 3. If it is less than the min_size return a new array that is padded. 
# 4. Non destructive will create a new array with old array values to padded
# 5. Destructive will overwrite current array with padded values


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
	return array << value if array.length <= min_size
	return array
  # #size_difference = min_size - array.length
  #   (min_size - array.length).times do
  #     array << value
  #   end   
  # array
end

def pad(array, min_size, value = nil)
  new_array = array.clone
  #return new_array << value if new_array.length <= min_size
  size_difference = min_size - array.length
    size_difference.times do
      new_array << value 
    end  
  return new_array
end


# 3. Refactored Solution



# 4. Reflection