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

  serving_size = library.values_at(item_to_make)[0] #matching up item to make with library value 
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
