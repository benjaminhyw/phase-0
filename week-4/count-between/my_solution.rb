# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
	return 0 if list_of_integers.length == 0 || upper_bound<lower_bound
	range = (lower_bound..upper_bound).to_a
	list_of_integers.count {|v| (lower_bound..upper_bound).include? (v)}

  # Your code goes here!
end

#basically write a method where you have two bounds, and the return is the number of elements in the array within those bounds

#return 0 if the list is empty, is only 0, or if the upper bound is less than the lower bound.
#create variable for range, which is everything between lower_bound and upper_bound, applied to array
#count the list_of_integers, but make sure you only give back those that are within the range
#the {} helps to apply that, so we say that within list_of_integers a new variable |v| applies to each indiivdual emthod
#Now that we applied that, we have to ask wether or not (v) in included (hence the include?) within the range
#BOOM