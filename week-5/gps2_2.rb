# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: create empty variable
#have a method that takes inputs (item, quantity, )
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here?]
# output: hashes

# Method to add an item to a list
# input: item name and optional quantity
# steps: define add method
#create loop asking if any other items, close when no more items need to be added
# output: updated list at this point

# Method to remove an item from the list
# input: item name
# steps: define subtracting method
#ask if any other items are to be deleted
# output: updated list

# Method to update the quantity of an item
# input: item name , new quantity
# steps: define update method
#ask name, quantity
# output: updated list

# Method to print a list and make it look pretty
# input: 
# steps:
# output:updated list



def grocery_list
  puts "What do you need to buy?"
  list = gets.chomp
  listarray = list.split(" ")
  listhash = Hash.new
  
  listarray.each do |item|
    
    listhash[item] = 1
    
  end
    listhash
end



groceries = grocery_list
p groceries


def add(groceries)
  puts "What else do you need?"
  new_item = gets.chomp
  groceries.merge!({new_item => 1})
  return groceries
end

groceries = add(groceries)
p groceries

def remove(groceries)
  puts "What do you want to get rid of?"
  subtract = gets.chomp
  groceries.delete(subtract)
  return groceries
end

groceries = remove(groceries)
p groceries

def update(groceries)
   puts "What do you need to update?"
   item= gets.chomp
   puts "How many do you need?"
   amount = gets.chomp.to_i
   groceries.merge!({item => amount})
  return groceries
 end
  
 groceries = update(groceries)
 p groceries

def print(groceries)
	groceries.each do |key, value|
		puts key.to_s + "; " + value.to_s
	end
end

print(groceries)


# What did you learn about pseudocode from working on this challenge?
# I haven't been doing so before but, it definitely helped me get a better understanding this time around.
# It felt pretty simple this time, but I figure the more specific you are (while avoiding ruby language), the easier it is to code later.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# Well arrays doesn't let us specify a key value, which hash does.  That in itself is super helpful when wanting to create an item with a quantity.

# What does a method return?
# Methods return the information we ask it to provide.  So, in this case it provided the list of items, quantity, plus updated list after adding and subtracting.

# What kind of things can you pass into methods as arguments
# Pretty much any object essentially.  Arguments are usually within the () and get called during the method either explicitly or via use of variable

# How can you pass information between methods?
# By creating new variables for method outputs (..?)

# What concepts were solidified in this challenge, and what concepts are still confusing?
# We need user input in this type of method via gets.chomp, and we need to assign that input a variablr to store the info for later use.
# We can transfer info from previous methods through use of variables in further methods.
# Conceptually... everything makes sense when I read it but when I have to write my own code it's hard for me.. I think partly because
# I expect myself to know all this information rather than know how to look it up?  I need to be better about looking up how certain concepts work.






