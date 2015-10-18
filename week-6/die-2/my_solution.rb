# Input: array of strings
# Output: random returns one of the strings, raise argurment error if empty array is passes
# Steps:
# 1. Raise ArgumentError in initialize method
# 2. Make instance variables for intialize and sides
# 3.Return random number between 1 and instance variables.length that is indexed for labels

# 3. Initial Solution
class Die
  def initialize(labels)
  	raise ArgumentError.new("Array must not be empty") if labels.length<1
  	@labels=labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels[Random.new.rand(0..@labels.length-1)]
  end
end

# # Reflection
# # What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The main differences was that I used labels as an array and index it for the return value of roll
# # What does this exercise teach you about making code that is easily changeable or modifiable? 
# It was easy to change this code due to my original die class being easily readable.
# # What new methods did you learn when working on this challenge, if any?
# I didnt use any new methods
# # What concepts about classes were you able to solidify in this challenge?
# I dont feel I benefitted from this challenge that much. Last week was a good intro into this challenge. 