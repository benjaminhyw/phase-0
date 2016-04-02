# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
#We don't want the entire string to be reversed, just the words.
#Create a method
#define variable that splits input of string
#define variable that creates empty array
#use built in methods on first vaiable to find length of split and then crete a variable to work with
#use said variable in other variables, return value by joining with space in between
#test



# Initial Solution
def reverse_words(string)
  words = string.split(' ')
  #we split so that our string can be worked with as an array
  reverse_string = []
  #we create an empty array

  words.length.times do |i|
  	#our variable words splits and we get the length of that, then the .times tells us to iterate that many times, do |i| creates a new variable for the iteration
  	#so essentially, words.length = 4, which then goes 4.times do |i|
    reverse_string[i] = words[i].reverse
    #reverse_string is the empty array in which we now include variable i, and make it equal words[i] reverse
  end
  return reverse_string.join(" ")
  #we then tell the reverse_string variable to join the words together again using a space, and this is the last thing in the method
end

puts reverse_words("This is a string") =>
#so when we input this, we get "sihT si a gnirts"


# Refactored Solution





# Reflection
# What concepts did you review or learn in this challenge?
# 	I felt like I had to review syntax, and even tho this was pretty simple I was thinking way too big at first..
# 	Like I tried doing something along these lines but couldn't make it work so then tried with Class.. but then that just confused me some
# 	So I tried this approach again and it took a lot of research just understanding things again... =/

# What is still confusing to you about Ruby?
# 	Nothing in this challeneg, not anymore.  But, I definitely need to go over a lot of different things.

# What are you going to study to get more prepared for Phase 1?
# 	Syntax, I basically plan on going over every module and regoing through things in my head.. if even one thing doesn't make sense, i'll read up on that again and take notes
# 	Will also finish my TreeHouse course thing



