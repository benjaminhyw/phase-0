# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

#errors.rb:8: syntax error, unexpected '=', expecting end-of-input
#"Screw you guys " + "I'm going home." = cartmans_phrase
#                                       ^

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 8
# 3. What is the type of error message?
# => syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => did not expect '=', expected 'end-of-input'
# 5. Where is the error in the code?
# => between the '=' and "cartmans_phrase"
# 6. Why did the interpreter give you this error?
# => Ruby doesn't allow variable assignment this way. Variables have to be the first thing identified, and operations occur after the equals sign.

# --- error -------------------------------------------------------

#south_park
#errors.rb:39:in `<main>': undefined local variable or method `south_park' for main:Object (NameError)
# 1. What is the line number where the error occurs?
# => 39
# 2. What is the type of error message?
# => undefined local variable or method 'south_park fr main: Object'
# 3. What additional information does the interpreter provide about this type of error?
# => (NameError)
# 4. Where is the error in the code?
# => The entire thing doesn't work by itself
# 5. Why did the interpreter give you this error?
# => We received this error because cartman() doesn't have any assigned value whatsoever, so it's essentially just empty text

# --- error -------------------------------------------------------

#cartman()
#errors.rb:54:in `<main>': undefined method `cartman' for main:Object (NoMethodError)


# 1. What is the line number where the error occurs?
# => 54
# 2. What is the type of error message?
# => undefined method 'cartman' for main:Object
# 3. What additional information does the interpreter provide about this type of error?
# => (NoMethodEror)
# 4. Where is the error in the code?
# =>the whole thing, as it doesn't stand on its own
# 5. Why did the interpreter give you this error?
# => Method is undefined and has no value

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end
#
#cartmans_phrase('I hate Kyle')


#errors.rb:71:in `cartmans_phrase': wrong number of arguments (1 for 0) (ArgumentError)
#	from errors.rb:75:in `<main>'

# 1. What is the line number where the error occurs?
# => 71 / 75
# 2. What is the type of error message?
# => Wrong number of arguments (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
# => (ArgumentError), pluseWhere the first error stems from, so line 75 aka cartmans_phrase('I hate Kyle')
# 4. Where is the error in the code?
# => Line 71.  
# 5. Why did the interpreter give you this error?
# => after cartmans_phrase there should be (variable) , but there isn't.
# => Also, 'I hate Kyle' should be a variable prior and included in the def

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

#errors.rb:95:in `cartman_says': wrong number of arguments (0 for 1) (ArgumentError)
#	from errors.rb:99:in `<main>'

# 1. What is the line number where the error occurs?
# => 95/99
# 2. What is the type of error message?
# => wrong nymber of arguments (0 for 1)
# 3. What additional information does the interpreter provide about this type of error?
# => (ArgumentError)
# 4. Where is the error in the code?
# => line 99
# 5. Why did the interpreter give you this error?
# => in Line 99 after Cartman there should be a value for variable offensive-message, but there isn't.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end
#
#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

#errors.rb:119:in `cartmans_lie': wrong number of arguments (1 for 2) (ArgumentError)
#	from errors.rb:123:in `<main>'

# 1. What is the line number where the error occurs?
# => 119/123
# 2. What is the type of error message?
# => wrong number of arguments (1 for 2)
# 3. What additional information does the interpreter provide about this type of error?
# => ArgumentError from errors.rb:123:in `<main>'
# 4. Where is the error in the code?
# => line 123
# 5. Why did the interpreter give you this error?
# => The method expects two argument, but we only have one.  In this case we have a lie, but no name.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

#errors.rb:141:in `*': String can't be coerced into Fixnum (TypeError)
#	from errors.rb:141:in `<main>'

# 1. What is the line number where the error occurs?
# => 141
# 2. What is the type of error message?
# => Strin can't be coerced into Fixnum	
# 3. What additional information does the interpreter provide about this type of error?
# => (TypeError)
# 4. Where is the error in the code?
# => The sequence * "string" itself doesn't work
# 5. Why did the interpreter give you this error?
# => This is a multiplication command.  Either change the string to a new number or put the string first.
# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


#errors.rb:158:in `/': divided by 0 (ZeroDivisionError)
#	from errors.rb:158:in `<main>'


# 1. What is the line number where the error occurs?
# => 158
# 2. What is the type of error message?
# => in `/': divided by 0
# 3. What additional information does the interpreter provide about this type of error?
# => (ZeroDivisionError)
# 4. Where is the error in the code?
# => The division problem itself, 20/0
# 5. Why did the interpreter give you this error?
# => because 20 can't be divided by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

#errors.rb:178:in `require_relative': cannot load such file -- /Users/benflores/DEVBOOTCAMP/phase-0/cartmans_essay.md (LoadError)
#	from errors.rb:178:in `<main>'

# 1. What is the line number where the error occurs?
# => 178
# 2. What is the type of error message?
# => 'require_relative': cannot load such file -- /Users/benflores/DEVBOOTCAMP/phase-0/cartmans_essay.md
# 3. What additional information does the interpreter provide about this type of error?
# => (LoadError)
# 4. Where is the error in the code?
# => the file name, as it does not exist
# 5. Why did the interpreter give you this error?
# => it's trying to pull up a file but can't find it.  can be fixed either by going to correct directory (if said file exists), or creating the file.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.


#Which error was the most difficult to read?
# south_park threw me off because it was so simple after the first one I was like ... what?
#I think the hardest might've been
#errors.rb:71:in `cartmans_phrase': wrong number of arguments (1 for 0) (ArgumentError)
#	from errors.rb:75:in `<main>'
#because it was the first that gave two lines with errors.
#
#How did you figure out what the issue with the error was?
#Well I tried to see what was wrong, and the error message basically describes what didn't happen according to plan, 
# so it's just a matter of figuring out what part of the code the error applies to.
#
#Were you able to determine why each error message happened based on the code? 
#Yea for the most part.  The fact that error messages follow the same format is helpful.
#
#When you encounter errors in your future code, what process will you follow to help you debug?
# I'm going to check the line to single out the code, see what type of error it is so I know how to 
#begin going about it, then check to see if the error message indicates any extra information 
# like argument count, or any other note.

