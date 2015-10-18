# Input: input as a int
# Output: return low, high or booleen if guess is correct.
# Steps:
  # 1. Create a class to hold methods
  # 2. Create initialize for the input so it can be used within other methods
# 3.set instance variable guess
# 4.use if statement to determine if guess is higher, lower or equal in a method guess
# 5. Set answer to guess to determine if solved in a method solved?

# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer=answer
#   end

#   def guess(guess)
#   	@guess=guess
#   	if @guess > @answer
#   		:high
#   	elsif @guess < @answer
#   		:low
#   	else @guess == @answer
#   		:correct
# 	   end	
#   end
#   def solved?
#   	@guess==@answer
# 	end
# end

# 4. Refactored Solution
class GuessingGame
 def initialize(answer)
   @answer=answer
  end

  def guess(guess)
  	@guess=guess
  	return :high if @guess > @answer 
  	return :low if @guess < @answer
 	  return :correct if @guess == @answer
  end

  def solved?
  	@guess==@answer
	end
end

# Reflection:
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variables are the characteristics of real world objects and the methods are the behaviors that we will use the instance variables.
# When should you use instance variables? What do they do for you?
# You should use an instance variable whenever you want a variable to be used in mulitple locations within a class. The allow it to be easier than having to ask or reassign variables.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control is a structure that takes an input and does things pending what it is to evaluate. Flow control is just like using a flow chart. I didnt have any problem using it in this challenge. It was pretty basic if, elsif , else structure. 
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# This code asked us to return a symbols because it speeds up the process. symbols are immutable meaning they cannot be changed.