# Psuedocode
# Input :Array
# Output: Subsets in an array or hash off groups of 4 and leftover
# Steps:
# 	1. for the length of the array add groups in subsets of an array by 4
# 	2. convert array to hash so sets contain the names of the groups as the value
# 	3. return the groups with the names



copperheads = [
"Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair",
"Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo",
"Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un CHoi",
"Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek",
"John Paul Chaufan Field", "Eric Freeburg", "Jeffery George",
"Jamar Gibss", "Paul Gaston Gouron", "Gabrielle Gustilo",
"Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez",
"Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim",
"James Kirkpatrick", "Christopher Lee", "Isaac Lee",
"Joseph Marion", "Kevin Mark", "Bernadette Masciocchi",
"Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill",
"Jeremy Powell", "Jessie Richardson", "David Roberts",
"Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith",
"Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe",
"Daniel Woznicki", "Jay Yee", "Nicole Yee", "Burno Zatta" ]
#Inital




# Refactored:
def acct_groups(array)
  cohort_groups=[]
  while array.length > 0
    cohort_groups.push(array.slice!(0,4))
  end  
  group=Hash.new(0)
  cohort_groups.each_with_index{|sets,index| group["Group "+ index.to_s] = sets}
  p group
end
acct_groups(copperheads)

What was the most interesting and most difficult part of this challenge?
It got difficult because I was in a rush and didnt do very good pseudocode. Iterating over the array to turn it into a hash was the most difficult part.
Do you feel you are improving in your ability to write pseudocode and break the problem down?
I think since things went so smoothly before I got too confident and didnt break down the steps as clearly. I will be going backt to spending more time on pseudocode code going forward
Was your approach for automating this task a good solution? What could have made it even better?
I wanted to add shuffle to it so it switch up the groups each time it ran but stuggled where I should place it.
What data structure did you decide to store the accountability groups in and why?
I decided the end should be store in a hash with the key being the group number and the value the list of names.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I used slice to with a range from 0 to 4. It needed to be descurtive to alter the original array when putting into cohort_groups. 

 