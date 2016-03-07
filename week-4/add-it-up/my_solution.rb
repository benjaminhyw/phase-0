# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an Array of numbers
# Output:The sum of the arrays
# Steps to solve the problem.
#Set variable to zero, this is where we'll start counting
#Iterate over the array to retrieve each element
#Then sum elements
#After the iteration is done we return the sum, which is the total of all the numbers


def total(array)
sum = 0 
array.each do |num|
    sum += num
end
sum
end

def sentence_maker(array)
    sentence = []
    array.each do |word|
    sentence << word
    end
    sentence.join(" ").capitalize << "."

end

# 1. total initial solution
def total(array)
sum = 0 
array.each do |num|
    sum += num
end
sum
end


# 3. total refactored solution
def total(array)
	array.inject(:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings
# Output:Return a joined sentence
# Steps to solve the problem.
#First we set an empty [] which will be our array of strings
#Second we iterate over the aray to retrieve all elemenets
#Then we push the elements inside the empty array
#After the iteration, we join the output, capitalize and dd a period at the end of the sentence


# 5. sentence_maker initial solution
def sentence_maker(array)
    sentence = []
    array.each do |word|
    sentence << word
    end
    sentence.join(" ").capitalize << "."

end


# 6. sentence_maker refactored solution
def sentence_maker(array)
	array.join(" ").capitalize << "."
end
