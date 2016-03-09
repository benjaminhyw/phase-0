# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# Array, minimum size, padding (value=nil)
# What is the output? (i.e. What should the code return?)
#A new array with the padding up to the minimum size
# What are the steps needed to solve the problem?
#define pad!
#destructively /(not destructively) map the array, and then assign variable n for array
#Crete if statement, where we get the size of the aray and if it's smaller than the minimum size,
#create an until, until size of array is equal to the minimum size, we will push the value into the array
#close the code blocks, and retun the array



# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
    array.map! {|n| n}
    if array.size < min_size 
        until array.size == min_size
            array.push(value)
        end
    end
    array
end




# def pad(array, min_size, value = nil) #non-destructive
#   # Your code here
# end
def pad(array, min_size, value = nil) #non-destructive
 new_array = []
 array.each {|n| new_array << n}
    if new_array.size < min_size 
        until new_array.size == min_size
            new_array.push(value)
        end
    end
    new_array
end



# 3. Refactored Solution



# 4. Reflection