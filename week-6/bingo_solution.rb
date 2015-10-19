# Release 0: Pseudocode
# Outline: 
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #define method to generate a letter and number
  #create new variables for letter and number, assign them random.new with parameters
  # create array with letter and number as subsets
# Check the called column for the number called.
  # create method for columns
  # use if statements to assign a column if it starts with letters in the array
# If the number is in the column, replace with an 'x'
  # define method to check_board for matches and replace
  # use each_with_index to check index value to number
  # set "x" to number value if matches
# Display a column to the console
 

# Display the board to the console (prettily)
 # use p to creae new line inside an .each

# Release 1: Initial Solution

class BingoBoard

  def initialize(board)
    @board = board
  end

  def call
    bingo=["b","i","n","g","o"].sample
    number=Random.new.rand(1..100)
    new_array=[bingo,number]
  end

  def column(bingo)
    if bingo.start_with?("b")
      column = 0
    elsif bingo.start_with?("i")
      column = 1
    elsif bingo.start_with?("n")
      column = 2
    elsif bingo.start_with?("g")
      column = 3
    else
      column= 4       
    end
  end 
    
  def check(new_array) 
        @board.each_with_index do |element,row| 
          if element[column(new_array[0])] == new_array[1]
             element[column(new_array[0])] = "X"
            end
  end
  @board.each do |row| 
   p row
  end    
  end
     
end

# Release 3: Refactored Solution
#same as above. Came up with diffent ways to tackle challenge but none refactored.

# Release 2: DRIVER TESTS GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
# check to see if a letter & number return
p new_game.call
#check method to replace the number if number is present
p new_game.check(["b",47])
#check board does not replace number is not present
p new_game.check(["i",1])

# Reflection:
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# I am not very good at writing Pseudocode that doesnt use some Ruby syntax. My style on this challenge is not what I ususually do. I was in a rush and did a pretty sloppy job on this challege. I will be coming back to make edits and refactor.
# What are the benefits of using a class for this challenge?
# It allowed for variables to be passed to mulitple methods. 
# How can you access coordinates in a nested array?
# I used nestarray[outer_index][inner_index] = element, this is on line 50 and 51
# What methods did you use to access and modify the array?
# I used each_with_index to access and modifty. 
# How did you determine what should be an instance variable versus a local variable?
# Anything that was going to be used in more than one method became an instance variable and everythign else local.
# What do you feel is most improved in your refactored solution?
# I didnt. I did not have time to refactor. I will be coming back on Monday to fix. 