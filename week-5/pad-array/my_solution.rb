# Pad an Array

# I worked on this challenge Parminder Singh

# I spent 1 hours on this challenge.


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
# Were you successful in breaking the problem down into small steps?
# Yes, my pair and I went into pretty good detail in our pseudocode code. 
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# For pad! it went smoothly but in trying to pad with a clone array we werent able to get it to work with just the return statement with the new array. So we went to using .times to iterate over the array.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Our test passed for pad! on the first try, with pad we encountered issues with trying to put it all on one line and used .times on the size_difference to push the new values.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# We were able to on pad! but calling a return statement to push the values if it was true but pad we werent able to.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# It seems pretty readable to me, we could have used something more descriptive for new_array like duplicate_array.
# What is the difference between destructive and non-destructive methods in your own words?
# Destructive rewrites over the array, non destructive returns a copy of the array with new values added but doesnt change the original copy.