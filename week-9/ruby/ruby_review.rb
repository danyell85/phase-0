# I worked on this challenge [by myself, with: ].
# This challenge took me .25 hours.

# Pseudocode
# Input:array
# Output: New array of numbers and word
# Steps:
#  1. Withing Method create a new array to hold new Output
#  2. when number % 15 add the word "FizzBuzz" inplace of numbers
#  3. when number % 3 add the work "Fizz" inplace of the numbers
#  4. when number is % 5 add the word "Buzz" inplace of the numbers
#  5. numbers stay number value
#  6. display new array

# Initial Solution

def super_fizzbuzz(array)
  new_array = []
  array.each do |x|
    if x % 3 == 0 && x % 5 == 0
      new_array << "FizzBuzz"
    elsif x % 3 == 0
      new_array << "Fizz"
    elsif x % 5 == 0
      new_array << "Buzz"
    else
      new_array << x
    end
  end
  new_array
end



# Refactored Solution
# use map to return a new array instead of creating one
def super_fizzbuzz(array)
  array.map {|x|
    if x % 15 == 0
      "FizzBuzz"
    elsif x % 3 == 0
      "Fizz"
    elsif x % 5 == 0
      "Buzz"
    else
      x
    end
   }
end

# Reflection
#What concepts did you review in this challenge?
#Reviewed conditional statements, pushing new values into an array. Knowing the output from each and map.
#What is still confusing to you about Ruby?
#This challenge was pretty straightforward. Just needed to remember to have %15 before the 3 and 5 so it would return FizzBuzz.
#What are you going to study to get more prepared for Phase 1?
#Keep on studying and doing more practice problems and remembering what things return.