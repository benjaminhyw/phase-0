# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
#p array[4][1]
p array[1][1][2][0]



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
# hash[outer:][inner:["almost"][[3]]]]
# hash[outer:][inner:]["almost"][3]
# hash[outer:][inner:]["almost", 3]
hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# nested_data[:array]["array"][:hash]
nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES
#Modify original array to add 5 to each number

number_array = [5, [10, 15], [20,25,30], 35]
#			   [E1 [E2    ]  [E3      ]  E4]


number_array.map! do |element|
    if element.is_a? Array 
        element.map! do |n|
            n + 5
        end 
    else
    element + 5
end
end
	 	



puts number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

REFLECTION

What are some general rules you can apply to nested arrays?
Basically figure out where they begin/end and know their index numbers
To move in, add array[i][i][i] accordingly

What are some ways you can iterate over nested arrays?
We used an if statement and map! to create variables

Did you find any good new methods to implement or did you re-use one you were already familiar with? 
What was it and why did you decide that was a good option?
We used .is_a? and map!
These worked well, is_a? helped us find the arrays within arrays, so if the elemenet was an array
and map! basiclly printed those out in their respective order






