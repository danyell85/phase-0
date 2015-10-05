# Analyze the Errors

# I worked on this challenge by myself
# I spent   hours on this challenge.

# --- error -------------------------------------------------------

#cartmans_phrase="Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end  
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# It 170 because it is missing an end for the while loop and running to the end of the file to find anothe end.
# Real line is on line 17
# 3. What is the type of error message?
# Syntax Error
# 4. What additional information does the interpreter provide about this type of error?
#unexpected $end, expecting keyword_end(SyntaxError)
# 5. Where is the error in the code?
# #Write your reflection below as a comment(this is the EOF)
# 6. Why did the interpreter give you this error?
# The while loop needs to be closed out with an end keyword.

# --- error -------------------------------------------------------

south_park=""

# 1. What is the line number where the error occurs?
# Line 37
# 2. What is the type of error message?
#Name Error
# 3. What additional information does the interpreter provide about this type of error?
#undefined local variable or method for south_park for main:Object
# 4. Where is the error in the code?
#Object
# 5. Why did the interpreter give you this error?
# south_park wasnt anything to the interpreter since it didnt have an assignment. I assigned to a string variable and no error occured.

# --- error -------------------------------------------------------

def cartman()
end	

# 1. What is the line number where the error occurs?
#Line 52
# 2. What is the type of error message?
#NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
#undefined method 'cartman' for main:Object
# 4. Where is the error in the code?
#cartman()
# 5. Why did the interpreter give you this error?
#The method cartman hasnt been setup properly. It needs to be defined with a def for the method and closed out with an end.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
#Line 68 
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#wrong_number of arguments (1 for 0)
# 4. Where is the error in the code?
#Line 72 cartmans_phrase('I hate Kyle')
# 5. Why did the interpreter give you this error?
#The method cartmans_phrase wasnt setup to take in any arguments. When calling the method on line 72 it was told to take in "I hate Kyle" but it cannot.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("KYLE")

# 1. What is the line number where the error occurs?
# Line 87
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of argumetns (0 for 1)
# 4. Where is the error in the code?
# cartman_says
# 5. Why did the interpreter give you this error?
# In calling the method cartman_says it is suppose to take in 1 arugment. In this example
# when calling it there isnt any arguements.Adding some string text will fix the error.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!',"Kenny")

# 1. What is the line number where the error occurs?
# Line 109
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# On line 113 when only calling 1 argument
# 5. Why did the interpreter give you this error?
# The method cartmans_lie is suppose to take lie arguement and a name. It is only entering the lie and not the name.

# --- error -------------------------------------------------------

puts "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# Line 128
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String cant be coerced into a Fixum
# 4. Where is the error in the code?
# Line 128 at "*"
# 5. Why did the interpreter give you this error?
# Ruby doesnt allow a number to be mulitplied by string, it does allow a string to be mulitplied by a number so I switched them around

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# Line 143
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
#line 143 at "/"
# 5. Why did the interpreter give you this error?
# You cannot divide a number by zero. Switched it to 1 to pass the test

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#Line 159
# 2. What is the type of error message?
#LoadError
# 3. What additional information does the interpreter provide about this type of error?
#cannt lad such afile
# 4. Where is the error in the code?
#Line 159
# 5. Why did the interpreter give you this error?
# The file doesnt exist in the path directory it was given


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment
# Which error was the most difficult to read?

# I didnt struggle with fixing any of the errors. 

# How did you figure out what the issue with the error was?

# I figured out the errors by reading what the error code was and looking at the code to determine what was off about it.

# Were you able to determine why each error message happened based on the code? 

# Yes.

# When you encounter errors in your future code, what process will you follow to help you debug?

# Reading what the error is and where is extremely helpful. After this assignment error codes do not seem so scary anymore
# For these examples everything was easy to figure out by following what the error code was, what line and then examining
# the code, fixing and testing again.