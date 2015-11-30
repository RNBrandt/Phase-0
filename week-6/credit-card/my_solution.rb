# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Regina Wong ].
# I spent [2] hours on this challenge.

# Pseudocode
=begin
# Input: credit card number (as a string)
# Output: whether it's a valid cc number or not
# Steps:
Take number move to string
Split string into individual digits
Reverse (or run code from the back of the input)
back to integer

double every second digit
back to string
split individual digits
back to integer
add digits
modulo 10 if true then it's valid

problems we still need to solve,
break double digits,
remove spaces from original string


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

 class CreditCard

  def initialize(cc_number)
    @cc_string = cc_number.to_s.reverse.split("")
    raise ArgumentError, 'Credit Card Numbers must be 16   digits'unless
    @cc_string.length == 16
  end

  def check_card

    cc_integer = @cc_string.map! { |number| number.to_i }
    cc_integer.map!.with_index { |value , index|
      if index % 2 != 0
        value *= 2
      else
        value
      end
      }

  final_string = cc_integer.map! { |number| number.to_s }

  string_array = final_string.join.split("")

  final_array = string_array.map! { |number| number.to_i }

  final_sum = final_array.inject(:+)

  if final_sum % 10 == 0
    p true
  else
    p false
  end

end
end
=end

# Refactored Solution

class CreditCard

  def initialize(cc_number)
    @cc_string = cc_number.to_s.reverse.split("")
    raise ArgumentError, 'Credit Card Numbers must be 16 digits'unless
    @cc_string.length == 16
  end

  def check_card

    cc_integer = @cc_string.map! { |number| number.to_i }
    cc_integer.map!.with_index { |value , index|
      if index % 2 != 0
        value *= 2
      else
        value
      end
      }

  final_string = cc_integer.map! { |number| number.to_s }

  string_array = final_string.join.split("")

  final_array = string_array.map! { |number| number.to_i }

  final_sum = final_array.inject(:+)

  if final_sum % 10 == 0
    p true
  else
    p false
  end

  end
end






# Reflection