# Psuedocode:
# 1. Create two classes
# 	1. NameData
# 		1. Create method to initialize my name
# 		2. need to make instance variable name and allow it to be read from a different class
# 	2. Greetings
# 		1. Create initialize method that creates an instance of the class NameData
# 		2. In another method called hello. Call the instance of the class with my name

class NameData
	attr_reader :name
	def initialize
	@name="Danielle"
	end	
end
class Greetings
	def initialize
		@namedata = NameData.new
	end	
	def hello
		puts "Hello #{@namedata.name}! How wonderful to see you today"
	end	
end
greet = Greetings.new
greet.hello

# Release 1:

# What are these methods doing?
# Methods on lines 3-21 are initialize the instance variables and then printing the instance variables to the console. Methods on 24-43 are changing the value of the instance variables. 
# How are they modifying or returning the value of instance variables?
# They are modifying the value by assigning them a new value using the = operator. 

# Release 2:
# What changed between the last release and this release?
# The what is age method is no longer needed. The instance variable doesnt need that method anymore because of attr_reader. The attr_reader is a method call that will change the value of the instance variable within the class.
# What was replaced?
# The what is age method with the attr_reader.
# Is this code simpler than the last?
# Yes, calling the attr_reader on age simplifies the code.

# Release 3:
# What changed between the last release and this release?
# Using attr_reader & attr_writer for age.
# What was replaced?
# The method change my age and updated the instance variable.
# Is this code simpler than the last?
# Yes.
# Release 4:
#  class Profile
# # here is the change, we combined the attr_writer and attr_reader into one declaration: attr_accessor
#   attr_accessor :age
#   attr_accessor :name
#   attr_accessor :occupation

#   def initialize
#     @age = 27
#     @name = "Kim"
#     @occupation = "Cartographer"
#   end

#   def print_info
#     puts
#     puts "age: #{@age}"
#     puts
#     puts "name: #{@name}"
#     puts
#     puts "occupation: #{@occupation}"
#     puts
#   end
#end

# instance_of_profile = Profile.new
# puts "--- printing age -----"
# sleep 0.8
# p instance_of_profile.age

# puts "--- printing name ----"
# sleep 0.8
# p instance_of_profile.name

# puts "--- printing occupation ----"
# sleep 0.8
# p instance_of_profile.occupation

# puts "--- changing profile information ----"
# 10.times do
#   print "."
#   sleep 0.1
# end

# instance_of_profile.age = 28
# instance_of_profile.name = "Taylor"
# instance_of_profile.occupation = "Rare Coins Trader"


# puts
# puts "---- printing all profile info -----"
# sleep 0.8
# instance_of_profile.print_info
# Release 5: See above
# Release 6:
# What is a reader method?
# A reader method gets the value for an instance variable that it is calling.
# What is a writer method?
# A writer method allows for the value to be written over/modified on an instance variable.
# What do the attr methods do for you?
# attr methods simpilfy the code by not having to create methods to change the instance variables. It also is easier to see which instance variables have the ability to be read and changed since they are grouped together at the top of a class if following best practices.
# Should you always use an accessor to cover your bases? Why or Why not?
# You shouldnt. In using accessor you would be allowing an instance variable to be changed that you might not want to have that power.
# What is confusing to you about these methods?
# They seem to be making sense to be. I struggled more with creating new instances of the class in the initialize method withing Greetings
