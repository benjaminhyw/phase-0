# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digits (maybe an array)
# Output: total that is multiple of 10
# Steps:
#raise ArgumentError if less than 16 digits
#starting from the last number, double every digit until you reach the first digit
#sum all digits (if digit is bigger than single-digit, split then add)
#check to see final total is multiple of 10 (aka divisible by 10)
#If all true, then we have a valid card.  If failed, card is not valid.


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
    def initialize(credit_card_number)

        @credit_card_number = credit_card_number.to_s.split('')
        @credit_card_number = @credit_card_number.reverse!
        
        if credit_card_number.to_s.size != 16
        	raise ArgumentError.new('Not enough digits') 
         end
    end

    def check_card
        @credit_card_number.map! do |num|
            if @credit_card_number.index(num).odd?
               new_num  = num.to_i * 2
                if new_num.size > 1
                    new_num.to_s.split('').map!{|digit| digit.to_i}
                end
            else
            num.to_i
            end
        end
       sum = @credit_card_number.flatten.inject(:+)
        if sum % 10 == 0
            return true
        else
            return false
        end

    end 

end


card = CreditCard.new(4563960122001999)

p card.check_card


# Refactored Solution

class CreditCard
  def initialize(credit_card_number)
        @credit_card_number = credit_card_number.to_s.split('').reverse!
       raise ArgumentError.new('Not enough digits') if @credit_card_number.size != 16
   end

  def check_card
      @credit_card_number.map! do |num|
          if @credit_card_number.index(num).odd?
             new_num  = num.to_i * 2
              if new_num.size > 1
                  new_num.to_s.split('').map! {|digit| digit.to_i}
              end
           else
                  num.to_i
          end
      end
      @credit_card_number.flatten.inject(:+) % 10 == 0
     
 end
   
end







# Reflection
# What was the most difficult part of this challenge for you and your pair?
# We initially tried to refactor as we went which confused us, so that was a no go lol
# Then we couldn't figure out how to split a number, then had issues getting them all
# in the same array.  We found methods .flatten and .inject(:+) but couldn't
# for the life of us figure out where to place it.. then both our computers crashed
# 	AND our ArgumentError was also acting up.  A lot of the time I think we struggled
# 	on having to convert to_s and to_i here and there, we'd forget to do so.

# What new methods did you find to help you when you refactored?
#We just did a general clean up, no new methods.

# What concepts or learnings were you able to solidify in this challenge?
# The general look of methods, instance variables, if statements, and ArgumentErrors lol

