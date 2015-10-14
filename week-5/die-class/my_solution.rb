# Psuedocode
# Input : A number of sides
# Output: Random number between 1 & the number of sides
# Steps:
#   1. Create Die class
#   2. an initialize method
#     1. Check to make sure sides is greate than or equal to 1
#     2. Makes sides and instance variable to be used in other methods within the class
#   3. Method to print sides
#   4. Create method roll, that returns a roll for between 1 and the number of sides that is random.

class Die
  def initialize(sides)
  	raise ArgumentError.new("Input must be greater than 0")  if sides < 1
    @sides=sides
  end

  def sides
	 @sides
  end

  def roll
    return Random.new.rand(1..@sides)
  end
end

# Reflection
# What is an ArgumentError and why would you use one?
# And ArgumentError is a message that comes up to let the user now that there was a problem with the input.
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I learned about using the Random method that creates a random number within the given parameters. 
# What is a Ruby class?
# A ruby class is a type of object that contains many attributes that relate to the class.
# Why would you use a Ruby class?
# You would use a class if you want to to hold mulitple attributes and pass different items to it that relate. Example: A drawer could be a class for different products that would be in it like silverware, for the silverware types you might want to know if they were dirty, clean, or in the drawer.
# What is the difference between a local variable and an instance variable?
# instance variables are defined by place an @ before the variable name, they are avaible across methods and can change from method to method. Local variables are only defined within the method they are created.
# Where can an instance variable be used?