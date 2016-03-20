#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_reader :name
	def initialize
		@name = "Ben"
	end
end


class Greetings
	def initialize
		@namedata = NameData.new
	end

	def hello
		puts "Hello #{@namedata.name}!  How wonderful to see you today!"
	end

end

greet = Greetings.new
greet.hello



# Reflection

#release_1.rb reflection : ***********************************************************************

# What are these methods doing?
#intialize is basically just setting up the variables.
#print_info uses interpolation and puts to display information
#what_is_age , change_my_age , what_is_name , change_my_name , what_is_occupation , change_my_occupation
#All of those ^^ are basically just redefining variables, overwriting
#Everything else that follows basically just prints the information by using the variable instance_of_profile = Profile.new

# How are they modifying or returning the value of instance variables?
#They're overwriting with new information, and use both p and puts

#release_2.rb reflection : ***********************************************************************

# What changed between the last release and this release?
#An atrr_reader :age was added, the what_is_age method is no longer needed, and we tell the updated
#info to print by using instance_of_profile.print_info (this is basically new variable we created, followed by method we defined.)

# What was replaced?
#what_is_age was replaced with the attr_reader :age 

# Is this code simpler than the last?
#Well there's less code to read, which is nice.  Not a huge amount, but still.

#release_3.rb reflection : **********************************************************************

# What changed between the last release and this release?
#we added an attr_writer :age , got rid of change_my_age method, changed instance_of_profile.change_my_age to instance_of_profile.age

# What was replaced?
#instance_of_profile.change_my_age to instance_of_profile.age, and the change_my_age method to attr_writer :age

# Is this code simpler than the last?
#In the sense that we have less code around, yes.

#release_4.rb reflection : ************************************************************************

#You can literally remove all of the methods by creating attr_accessor codes.
#When you do so, don't forget to change the .method at the end of whatever you're working with.
#Attr methods are a great way to have classes communicate data kept in instance variables.



What is a reader method?
A reader method attr_reader basically returns the value or state outside of a class, but make no changes to it.

What is a writer method?
a writer method attr_writer lets you make changes to the variable outside of the class, but you can't read it.

What do the attr methods do for you?
Essentially they simplify your code by requiring less defined methods, but they communicate data stored in instance variables between classes.

Should you always use an accessor to cover your bases? Why or why not?
No, not always.  Sometimes you wont want to give people the ability to make changes to certain information, or even have the ability to read certain information.

What is confusing to you about these methods?
They're not all that confusing, but honestly it might take me some getting used to when I try and refactor or when I see that already being implemented.


