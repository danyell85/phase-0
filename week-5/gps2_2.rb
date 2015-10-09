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