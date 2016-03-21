# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #letters b,i,n,g,o are set, so we'll probably have to interpolate letter#{random_number}
  #We also have to tell the method to pop one of thoseletters out at random, plus random number
  #So something like "Next play is #{random_letter}#{random_number}"
  #Tell method to keep providing plays until BINGO
  #Set rules for BINGO (as in, how to win aka when to break code or end it or move on to the next part etc.)

# Check the called column for the number called.
  #fill in the outline here
  #We will have to work with index numbers, so B,I,N,G,O are 0,1,2,3,4 respectively.
  #We need to do that so we can use methods like value_at? or something equivalent

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  #create if statement
  #if value is called, replace (or overwrite) value with 'x'.
  #repeat this process until BINGO

# Display a column to the console
  #fill in the outline here
  #I think this means like refresh the outcomes?

# Display the board to the console (prettily)
  #fill in the outline here
  #refresh the board after each play!

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    letters = ['B', 'I', 'N', 'G', 'O']
    @letter = letters.sample
    @number = rand(1..100)
    @called_play = "#{@letter}#{@number}"
  end

  @called_play

  def check

    @number
      case @letter
        when 'B'
          column = 0
        when 'I'
          column = 1
        when 'N'
          column = 2
        when 'G'
          column = 3
        when 'O'
          column = 4
      end

    @bingo_board.each do |row|
      row[column] = 'X' if @number == row[column]
    end
  end

  def display
    puts "------------"
    puts "BINGO!"
    puts "------------"

    @bingo_board.each do |row|
      print "|"
      row.each do |num|
        print "  #{num}  "
      end
      puts "|"
    end
  end

end



# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

2000.times do 

  new_game.display

  puts "Next call is #{new_game.call}!!"
  puts  
  new_game.check
  sleep 0.5
end




#Reflection

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
Pseudocoding was not hard for this challenge, I thought the instructions were pretty clear and straightforward.
Creating my code definitely took me a while tho :[

What are the benefits of using a class for this challenge?
It allows you to keep using the same instance variables througout the entire class!

How can you access coordinates in a nested array?
In this exercise i created variables row and column, then basically just placed them in the
order the information is presented.  So, row[column].

What methods did you use to access and modify the array?
I used instance variables, if statements, cases, and .each to create variables

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
I didn't learn any new methods during this exercise.

How did you determine what should be an instance variable versus a local variable?
Based on where that information was needed in the code.  If I needed data throughout several methods, then they were instance variables.
Otherwise if they were only needed during that instance, they remained local.

What do you feel is most improved in your refactored solution?
I'll come back to refactor
