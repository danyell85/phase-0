# I worked on this challenge [by myself, with: ].
# This challenge took me .25 hours.

# Pseudocode
#pair and I skipped, it was an additional pairing


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