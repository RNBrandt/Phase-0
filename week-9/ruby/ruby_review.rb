# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# input should is an array of integers.
# the output should be an array which replaces the integers with the appropraite numbers.
# IF the integer is divisable by 3 it will be replaced by the string "Fizz"
# If the integer is divisable by 5 it will be replaced by the string "Buzz"
# If the integer is divisable by 15 it will be replaced by the string "FizzBuzz"


# Initial Solution

# def super_fizzbuzz(array)
# array.map! {|integer|
#   if (integer % 15 == 0)
#     integer = "FizzBuzz"
#   elsif (integer % 5 == 0)
#     integer = "Buzz"
#   elsif (integer % 3 == 0)
#     integer = "Fizz"
#   else
#     integer
#   end
#   }
# p array
# end



# Refactored Solution

def super_fizzbuzz(array)
array.map! do |integer|
  if (integer% 15 == 0) then integer = "FizzBuzz"
  elsif (integer % 5 == 0) then integer = "Buzz"
  elsif (integer % 3 == 0) then integer = "Fizz"
  else integer
  end
end
p array
end

#super_fizzbuzz([1,2,3,4,56,7,15,2,14,15,34,53,3])




# Reflection