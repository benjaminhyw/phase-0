# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # Your code goes here!

if list_of_words.length > 0
  list_of_words.sort! { |x,y| x.length <=> y.length }
 end

  return list_of_words.last
end

#When you just use .sort, it sorts them alphabetically as well.  To avoid that, you need to tell the .sort to use length instead
#to do that, {} kicks in, where we then use || to assign variables within array, don't really know what the <=>
# but this is how you tell it to use length to sort.