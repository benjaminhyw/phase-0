# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil



def shortest_string(list_of_words) 
list_of_words.sort! { |x,y| x.size <=> y.size }
return list_of_words[0]
end

#define method
#list_of_words.sort! so sort from shortest to longest {|variable containing two variables| x.size greater than or qual to or less than y.size}
#^^basically what happens here is you tell your array to compare each element to themselves in terms of .size, then to sort themselves
#return list_of_words[0] aka the first element in the array.  after sorting, this should be the smallest one
#end