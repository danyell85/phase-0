# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

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


