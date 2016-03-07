# Factorial


#First we define the factorial of 0 == 1
#Assign variable num = number-1, and result = number (as in new number), do this to count down
#WHILE variable num is greater than or equal to 1, 
	#result multiplies all of the numbers within num,
	#then we subtract 1 from num
	#end
#print result
#end

# I worked on this challenge [by myself, with: ].


# Your Solution Below
  # Your code goes here


def factorial(number)
    return 1 if number ==0
 num = number - 1
 result= number
 while num >= 1
   result *= num
   num -= 1
 end
 result
end