
# def serving_size_calc(pastry_to_make, order_quantity)
#   pastry_menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   #calling a hash called library and creating error counter
#  # error_counter = 3 
#   check = pastry_menu.include?(pastry_to_make)
#   raise ArgumentError.new("#{item_to_make} is not a valid input") if check == false
  
# #   library.each do |food|
# #     if library[food] != library[item_to_make]
# #       p error_counter += -1
# #     end
# #   end

# #   if error_counter > 0
# #     raise ArgumentError.new("#{item_to_make} is not a valid input")
# #   end
#   #adding an argument error that says if there are any errors to tell user not valid input
#   #serving_size = pastry_menu.values_at(pastry_to_make)#[0]
#   serving_size = pastry_menu[pastry_to_make]
#   #pulling values of the key and returning as array
#   leftovers = order_quantity % serving_size
#   #calculating any leftovers after dividing order quantity by serving size

#   if leftovers == 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{pastry_to_make}"
#   elsif leftovers == 1
#     return "Calculations complete: Make #{order_quantity/serving_size} plus one cookie."  
#   else 
#     large_qtys_of_leftovers = leftovers -3 
#     return "Calculations complete: Make #{order_quantity/serving_size} a cake + #   {minus_size_mod} cookie."
#   end
# Refactored  
def serving_size_calc(pastry_to_make, order_quantity)
  pastry_menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  check = pastry_menu.include?(pastry_to_make)
  raise ArgumentError.new("#{item_to_make} is not a valid input") if check == false
  
  serving_size = pastry_menu[pastry_to_make]
  leftovers = order_quantity % serving_size

  if leftovers == 0
    return "Calculations complete: Make #{order_quantity/serving_size} of #{pastry_to_make}"
  elsif leftovers == 1
    return "Calculations complete: Make #{order_quantity/serving_size} plus one cookie."  
  else 
    large_qtys_of_leftovers = leftovers -3 
    return "Calculations complete: Make #{order_quantity/serving_size} a cake + #   {minus_size_mod} cookie."
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("cake", 9)
p serving_size_calc("THIS IS AN ERROR", 5)

# #  Reflection
# # What did you learn about making code readable by working on this challenge?
# That is it really important so it is easier to figure out what is going on. The ArgumentError before we refactored was a so messy.
# # Did you learn any new methods? What did you learn about them?
# I didnt learn about any new methods. I did have to double check what values_at was going to return. 
# # What did you learn about accessing data in hashes? 
# That the current code made it way more diffcult than it needed to be. We changed it to be libray[item_to_make].
# # What concepts were solidified when working through this challenge?
# It was good to work with hashes again. It is something I usually dont use in my code and the pratice was good.