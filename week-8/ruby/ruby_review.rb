# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# We don't want the entire string to be reversed, just the words.
# Meaning, word order should stay the same but the word itself should not.
# Makes me think we'll be mapping, using . reverse, maybe an each method
# for each word in the string, do |x|
# Then make it so that x.reverse stays in place ..



# Initial Solution
def reverse_words(str)
  words = str.split(' ')
  reverse_str = []

  words.length.times do |i|
    reverse_str[i] = words[i].reverse
  end
    

  return reverse_str.join(" ")
end

puts reverse_words("This is a string")


# Refactored Solution





# Reflection