# 0. Pseudocode

# What is the input? Numbers
# Step 1. convert int to string
# Step 2. check if string length is greater than 4.
# Step 3. Start at the end or the string or reverse to start in the front so commas are in the correct location.
# Step 4. put strings in subsets after reversing string. 
# Step 5. Place a comma into the substrings
# Step 6. Push substrings to string
# Step 7. Return string in reverse
# Output: a string with commas for every 3 place holders.
# 1. Intial Solution
def separate_comma(int)
  string = int.to_s
  start_point = string.length - 3 #this allows for the first run in the loop to insert the comman into the correct location. It will also serve as a counter that decreases by 3.
  while start_point > 0
    string.insert(start_point, ",")
    start_point -= 3
  end
  string
end    
# # 1. Refactored Solution
#  def separate_comma(int)
#   if string.length < 4 
#     return string
#   end  
#    sentence=string.reverse.scan(/.{1,3}/).inject(String.new()){|string2,set| string2 +","+ set}
#    sentence[1..(sentence.length)].reverse
# end
# # 2. Refactored Solution

# def separate_comma(int)
#    string = int.to_s
#   if string.length < 4
#     return string
#   end
#   string.reverse.scan(/.{1,3}/).join(',').reverse
# end
# What was your process for breaking the problem down? What different approaches did you consider?
# I considered starting at the front of the sting but then realize it would be easier to reverse it so the left over numbers were at the front and didnt need a comma. 
# Was your pseudocode effective in helping you build a successful initial solution?
# My pseudocode was effective in helping me with my refactored solution which I guess was my intial. 
# Yes, my pseudocode was based on using built in methods in ruby which was what was suppose to be the refactoring part. I should have rewritten it for the intial solution which I had to go back and redo after reading the instructions.
# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
# I used so many! I learned about scan that broke down the string into subsets of three so I could add a comma between them. I then used join instead of using inject. It made the code much cleaner to read.
# How did you initially iterate through the data structure?
#I decided to use a while loop with a counter to go through the lenght of the string and insert a comma for every 3 
# Do you feel your refactored solution is more readable than your initial solution? Why?
# My refactored solution is only more readable if you know what the methods I use do. For someone without knowlegde of them it would be hard for them to know what scan does. Put overall I think my intial solution might be the cleanest.