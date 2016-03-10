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

# # Were you successful in breaking the problem down into small steps?
# Yea kind of, we needed to basically create a new array pushing in a pad, depending on the size

# # Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# We kind of worked backwards because we tend to tackle the problem immediately.. which is kind of bad practice in terms of understanding how to start problems.
# However, after some time we managed.  Will start pseudocoding better from now on.

# # Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# I'm writing this a couple of days after the pair session so I don't remember what errors exactly we encountered but we definitely struggled a bit.
#Map was kind of new to us, we also kept forgetting minor details like == instead of = or even just making sure we added the right amount of ends.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
#Although I know refactoring basically means simplifying your code, I don't feel like I can tweak my codes all that much after I get them running... This was as simple as I was able to get it.
# Still have some time before it's due tho, so I'll try and come back before then.

# # How readable is your solution? Did you and your pair choose descriptive variable names?
# I think it's pretty readable!  Our variable names dealt with arrays, they could've been a bit more descriptive in terms of the content.

# # What is the difference between destructive and non-destructive methods in your own words?
# Destructive permanently changes the original, so if you use a destructive method when you call on the original variable it will no longer have the original elements, but rather the new changes.
# non-destructive basically means changes are not permanent, so when you return the elements they are as they were originally inputted.





# 4. Reflection