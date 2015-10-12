#Pseudocode
# Input: the input will be 
# Create a new list that is a hash, key=item & value = qty
# Create a method that takes in item,qty and add them to the list
# Create a method that removes an item from the list
# Create a method that updates qtys on the list
# Create a method that prints the list

# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4

# list = Hash.new

# def add_item(item, qty, list)
#   list[item]=qty
#   list
# end  

# def removes(item, list)
#   list.delete(item)
#   list
# end

# def updates(item, qty, list)
#   list[item] = qty
#   list
# end

# # def print(list)
# #   list.each do |item, qty|
# #     p "We need #{qty} of #{item}"
# #   end  
# # end
# add_item("Ice Cream",4, list)
# add_item("Lemonade", 2, list)

def grocery(command, list={})
  if command.downcase == 'create'
    list = {}  
  elsif command.downcase == 'add'
    p 'What item do you want to add?'
    item = gets.chomp
    p 'How many?'
    qty = gets.chomp
    list[item] = qty
  elsif command.downcase == 'removes'
    p "What item do you want to remove?"
    item = gets.chomp
    list.delete(item)
  elsif command.downcase == 'updates'
    p "What item do you want to change the qty of?"
    item = gets.chomp
    p "Qty?"
    qty = gets.chomp 
    list[item]= qty  
  else raise ArgumentError.New("You didnt enter a correct command")   
  end      
end


# Reflection
# # What did you learn about pseudocode from working on this challenge?
# That writing it is a guide map. Writing good pseudocode helps if you get stuck so you can go back and have a line to reference what you are trying to code.
# # What are the tradeoffs of using Arrays and Hashes for this challenge?
# Hashes were much easier to use since we wanted to have sets of the data and were related to each other. We wanted the item to have a value of price.
# # What does a method return?
# A method returns the last statement it runs. It can return a string value, a number value, a list.
# # What kind of things can you pass into methods as arguments?
# To my knowledge you can pass anything to a method, an array, strings, the value of another method, and numbers
# # How can you pass information between methods?
# You can pass information between methods by using a global variable which is assigned my using a $ before the variable like $variablename. Or passing it through as an parameter.
# # What concepts were solidified in this challenge, and what concepts are still confusing?
# This challenge was helpful to go over the basics of using hashes. We did have a hang up on using string interpolation. We learned that it needs to be "" inside of '' for it to run properly.