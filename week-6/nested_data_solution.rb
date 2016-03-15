# # RELEASE 2: NESTED STRUCTURE GOLF
# # Hole 1
# # Target element: "FORE"

# array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# # attempts:
# # ============================================================
# #p array[4][1]
# p array[1][1][2][0]



# # ============================================================

# # Hole 2
# # Target element: "congrats!"

# hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================
# # hash[outer:][inner:["almost"][[3]]]]
# # hash[outer:][inner:]["almost"][3]
# # hash[outer:][inner:]["almost", 3]
# hash[:outer][:inner]["almost"][3]


# # ============================================================


# # Hole 3
# # Target element: "finished"

# nested_data = {array: ["array", {hash: "finished"}]}

# # attempts:
# # ============================================================
# # nested_data[:array]["array"][:hash]
# nested_data[:array][1][:hash]


# # ============================================================

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










