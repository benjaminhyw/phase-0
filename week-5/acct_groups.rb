# PSEUDOCODE

#Find out how many people are in the full roster 
	#Do this to see what the ideal group size (88 individuals, so you can have groups of 4 no problem!!)
#Create method that splits full list into groups of either 3-4 (After finding full number of students, use 4)
	#Probably create an exception for one or two groups to have more people if a group of 1-2 exists. (No exception in this case)
# You could do this by finding index number then grouping together 0-4, 5-8, etc
#Or if you want a random order, shuffling them then just pushing them into empty arrays





def acct_groups(namelist)
	full_size = namelist.size
	size_of_group = 4 #because I counted the full list and counted 88 members... not sure how you'd go about it without having that number available
	number_of_groups = full_size / size_of_group #In this case 88/4 = 22
	random_order = namelist.shuffle
	groups = Array.new(number_of_groups) {[]}
		until random_order.empty?
			groups.each do |group| 
			group << (random_order.pop)
			end
		end
	
return groups
end



#Driver code:
cohort = ["Adell Hanson-Kahn",
"Aji",
"Alex DeLaPena (Guide)",
"Bison Hubert (Guide)",
"Caitlyn Yu (Guide)",
"Gary Sperka (Guide)",
"Helin Shiah (Guide)",
"James Hwang (Guide)",
"Jen Trudell (Guide)",
"Joey Sabani (Guide)",
"John Dees (Guide)",
"Katy Duncan (Guide)",
"Laura Crowe (Guide)",
"Lorena Mesa (Guide)",
"Matt Higgins (Guide)",
"Morgan McCrory (Guide)",
"Neal Peters (Guide)",
"Regina Compton (Guide)",
"Ryan Milstead (Guide)",
"Sara Gilford (Guide)",
"Aarthi Gurusami",
"Abid Ramay",
"Adam Zmudzinski",
"Alec Hendrickson",
"Alex Wen",
"Alicia Briceland",
"Allison paul",
"Andrey Slonski",
"Anna Lansfjord",
"Ben Sanecki",
"Ben Flores",
"Buck Melton",
"Caitlin Hoffman",
"Carlos Gonzalez",
"Chand",
"Ché Sanders",
"Chris Henderson",
"Chris Lamkin",
"Christyn Budzyna",
"Dan Park",
"David Ramirez",
"David Tao",
"David Walden",
"Bill Deng",
"Denny Jovic",
"Daniel Deutsch",
"Dexter Moran",
"Diana Ozemebhoya Eromosele",
"Dominick Lombardo",
"Elan Kvitko",
"Elizabeth Alexander",
"Elizabeth Brown",
"Emmanuel Kaunitz",
"Ena Bek",
"Esther Leytush",
"Evan Druce",
"Frank Lam",
"Gabo",
"Jack Thatcher",
"Jason Milfred",
"John Colella",
"Jonathan Kaplan",
"Kelsonic",
"Kristal Lam",
"Kunal",
"Leland Meiners",
"Liam Binell",
"Lisa Buch",
"Lisa Dannewitz",
"Mila",
"Charlotte Manetta (Guide)",
"Mohamed Monekata",
"Parker Smathers",
"Patrick DeWitte",
"Renan Martins",
"Riley",
"Robin Soubry",
"James Robinson",
"Samantha Holmes",
"Scott Southard",
"Shaun R Sweet",
"Shin Wang",
"Sibel Ergener",
"Simon Thomas",
"Talal Talhouk",
"Ted Bogin",
"Traci Fong",
"Victoria Solorzano"]


outside_g_num_var = acct_groups(cohort)
puts "There are #{outside_g_num_var} groups:"

outside_g_num_var.each.with_index do |group, i|
	puts "Group #{i+1}"
	puts "= = = = = = = = ="
	puts group
	puts 
end


# What was the most interesting and most difficult part of this challenge?
# Conceptually this felt pretty straightforward, which is interesting because so far most of ruby has not been (for me, definitely for me)
# But also, I thought It was a cool way to mix in several different elements to show us something we could literally relate to (accountability groups in DBC)
# I had the hardest time printing my group, because my code was always off on little things here and there.  Got it down essentially but couldn't get it to show us groups with people

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# In this one, yes!! This Pseudocode/breakdown was pretty simple which is relieving!!

# Was your approach for automating this task a good solution? What could have made it even better?
# Yea I think so?  Basically created new arrays, randomized the list, pushed items into empty arrays and deleted those items as we went for no duplicates
# I feel like if anything.. maybe my weird variable names, otherwise can't think of anything at the moment

# What data structure did you decide to store the accountability groups in and why?
# I went with arrays because it allowed us to then use the index (which you don't really need until you're giving your group a number)
# But still, there's no need to input a key name with arrays.. and also easier visibility in my opinion when trying to create / push

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I'll try to come back and refactor later, wasn't able to see any way to go about it when first coming across the refactor step.
