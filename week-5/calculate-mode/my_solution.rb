# Calculate the mode Pairing Challenge

# I worked on this challenge 

# I spent 1 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
# What is the input? Array of number or strings
# What is the output? An array of the most frequent number, or single element array.
# What are the steps needed to solve the problem?
# 1.define a method called mode
# 2.create a hash
# 3.Iterate over the array to push elements into the hash, elements being the keys and     the value as the counter
# 4.Look for the max counter number in the hash
# 5. Output the key in an array  


# 1. Initial Solution
# def mode(array)
#   frequency = Hash.new(0)
#   array.each{|element|frequency[element] +=1} # frequency[element]= array.count[element]
#   array2=[]
#   frequency.each do |key,value|
#     if value == frequency.values.max
#       array2 << key
#     end
#   end
#   array2
# end  

# h = Hash[arr.collect { |v| [v, f(v)] }]
# 3. Refactored Solution
def mode(array)
  frequency = {}
  array.each{|element| frequency[element] = array.count(element)} 
  modes = frequency.select {|k,v| v == frequency.values.max}
  modes.keys
end  
# Reflection
# Which data structure did you and your pair decide to implement and why?
#We decided to push the array to a hash so we could use the value as a counter.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
#We were successful in breaking down the problem. Since this was a different problem I cant say if we did better than my last pair. Both were successful.
# What issues/successes did you run into when translating your pseudocode to code?
#Our intial solution ran correctly after I corrected the fact I named variables different in two places.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#Refacorting was the best part. We used parition and separated the keys and values then returned the max value. We ended with using select. We also learned that using .count allowed us to not need to set the Hash.new(0) at zero to start the counting like in the intital solution.