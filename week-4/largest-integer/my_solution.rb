# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
 if list_of_nums.length==0
 	return nil
end
	max_num = list_of_nums[0]
	list_of_nums.each do |number|
		if number > max_num
		max_num=number
  		end
  	end
  	max_num
end


#This next code was also taken from LisaBee224.  Same as mine, but smaller variables

# def largest_integer(list_of_nums)
#   big = list_of_nums[0]
#   list_of_nums.each do |num|
#     if num > big
#       big = num
#     end
#   end
#   return big
# end