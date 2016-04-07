# Drawer Debugger

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Original Code

class Drawer 

  attr_reader :contents

  # Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item (item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    puts "Your drawer is empty."
    @contents = []
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type}
  end

end

  class Silverware < Drawer
    attr_reader :type

    # Are there any more methods needed in this class?

    def initialize(type, clean = true)
      @type = type
      @clean = clean
    end

    def eat
      puts "eating with the #{type}"
      @clean = false
    end
    
    def clean_silverware
      @clean = true
      
    end
  
  end





# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.

spoon = Silverware.new("spoon")
silverware_drawer = Drawer.new
silverware_drawer.add_item(spoon)
silverware_drawer.view_contents

raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean_silverware #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE






# Reflection

# What concepts did you review in this challenge?
# 	Method syntax, class structures, class inheritance, instance variables, and code indentation.

# What is still confusing to you about Ruby?
# 	Nothing from this challenge.. we did have a hard time realizing one of the errors we were receiving
# 	because it had nothing to check lol.  Once we realized that tho, we added the necessary code for it
# 	to work and we were well on our way.

# What are you going to study to get more prepared for Phase 1?
# 	Everything I can, to be honest.  This exercise was editing a code so it worked, so it wasn't all that tough.
# 	It's different editing and creating tho, much different comfort zones.  Low key afraid of phase-1 lol.


