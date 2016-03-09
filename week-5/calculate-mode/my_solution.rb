# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? 
#An array of numbers or strings
# What is the output? (i.e. What should the code return?) 
#object with the highest frequency
# What are the steps needed to solve the problem?
#Declare variables and set them to empty arrays,
#MAP the array to retrieve the number of frequencies
#Choose maximum frquency and push it into variable
# iterate a second time and compare the frequencies to maximum frequencies
#push the maximum frequencies inside a final aray
# return the final array



# 1. Initial Solution
def mode(array)
final_array = []
max_count = []
array.map do |r| 
    max_count << array.count(r)
    end
    max_num = max_count.max
array.map do |m|
        if array.count(m) == max_num
       final_array << m
        end
    end
    final_array.uniq

end


# 3. Refactored Solution




# 4. Reflection