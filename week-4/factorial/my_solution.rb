# Factorial

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