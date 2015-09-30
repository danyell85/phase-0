puts "What is your first name?"
firstname = gets.chomp
puts "What is your middle name?"
middlename = gets.chomp
puts "What is your last name?"
lastname = gets.chomp
fullname = firstname + middlename + lastname
puts fullname

puts "What is your favorite number"
number = gets.chomp
number = number.to_f
betternum = number + 1
puts "The bigger better number is " +betternum