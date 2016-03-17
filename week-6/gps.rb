# Your Names
# 1)Alex Wen
# 2)Ben Flores

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  library.each do |food| #comparing library with input to see if there are any matches
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end

    raise ArgumentError.new("#{item_to_make} is not a valid input") if error_counter > 0 #if none match, output the argumenterror

  serving_size = library[item_to_make] #matching up item to make with library value 
  remaining_ingredients = num_of_ingredients % serving_size #determine any leftovers
  suggestion = ""
  
  if remaining_ingredients < 5
    suggestion = "cookie"
  else
    suggestion = "cookie or cake"
  end
    

  case when remaining_ingredients == 0 #if there are no leftovers, display one output, otherwise display the other output
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: #{suggestion}"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 13)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 9)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection


# What did you learn about making code readable by working on this challenge?
# Shorter code doesn't necesarilly mean better, however there are a lot of different ways to refactor
# For example raise ArgumentError.  Making things more readable makes it easier to understand from an outsider perspective.

# Did you learn any new methods? What did you learn about them?
# I did not learn any new methods during this challenge.

# What did you learn about accessing data in hashes? 
# To access them you have to be sure you are addressing the elements correctly.
# Good use of specific variables issuper helpful.

# What concepts were solidified when working through this challenge?
# if statements, raise ArgumentError, defining methods, cases (although this one is still a fairly new concept for me so it was just more practice, which was useful.)





