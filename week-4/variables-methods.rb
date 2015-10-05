#Name
puts "What is your first name?"
firstname = gets.chomp
puts "What is your middle name?"
middlename = gets.chomp
puts "What is your last name?"
lastname = gets.chomp
fullname = firstname.to_s + middlename.to_s + lastname.to_s
puts fullname

#Bigger Better Number
puts "What is your favorite number"
number = gets.chomp
number = number.to_f
betternum = number + 1
puts "The bigger better number is " + betternum.to_s

# Reflection
# How do you define a local variable?
# You defined a local variable within a method or class by assigning it a value. Local variable start with a lower case
#  or underscore. 
# How do you define a method?
# You define a method by def method_name() end.
# What is the difference between a local variable and a method?
# A local variable hold a value. A method is a set of code the is executed based of parameters it takes in.
# How do you run a ruby program from the command line?
# To run run a ruby program in the command line you type in ruby file_name_here.rb
# How do you run an RSpec file from the command line?
# To run an rspec file you type in rspec spec_file_name_.rb
# What was confusing about this material? What made sense?
# Nothing was confusing. At first I forgot to run the spec file instead of my solution.rb file. 