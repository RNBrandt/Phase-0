# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.



# There are 2 stages of refactoring/
# - Readability
# - logic / redudancy.

# You ALWAYS do readability first.
# aka rename your variables.
# This is because it is unlikey to break anything
# And makes refactoring the logic easier as well.



def serving_size_calc(item_to_make, available_ingredients)
  # What do the values represent?
  ingredients_req_per_dish = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  # The numbers are the number of ingredients needed to make each item.

  # Define error counter with a default value of 3.
#   error_counter = 3


#   # This block is checking if the library includes the requested item.
#   ingredients_req_per_dish.each do |food|
#     # Checks each item in the library 1 by 1.
#     # If the requested item is not equal to the current library item...
#     if ingredients_req_per_dish[food] != ingredients_req_per_dish[item_to_make]
#       # Than reduce "error_counter" by 1.
#       # p error_counter += -1
#       error_counter += -1
#     end
#   end
  # REFACTOR: Use Hash#include?


  # .() is a method in itself.
  # The dot also represents a call.
  # Whereas the hash is just a reference.

  # This is trying to say if the input isn't on the list in the hash above, it will produce an error.
  unless ingredients_req_per_dish.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end #refers to counter from code above.

  ingredients_req_for_item_to_make = ingredients_req_per_dish.values_at(item_to_make)[0]
  # The [] represents a call on a hash or an array.
  # The integer 0, most likely represents an index, which means an array.

  # All hash methods, are actually "array" methods.
  # library.keys => returns an array of all the keys
  # library.keys.values_at()

  # Return an array, or all values that match the key item_to_make.
  # Can a hash have duplicate keys? -no
  # Therefore, our returned array will always have only 1 element.
  # library.values_at("cake")
  # => [5]
  # [5][0]
  # => 5
  # So basically what the [0] index is doing, is converting the single element array into an integer.

  # so... serving_size = 5
  # Serving size is represented by the value associated with each key. Since each key only has one value, this can be done more clearly and elegantly. retrun value for input key.
  # Is it for each key, or a target key. i.e item_to_make?

  # How do you return the value for a key in a hash?
  # Array[index] => value
  # Hash[key] => value
  # library[cookie] => 5
  # REFACTOR: serving_size = library[item_to_make]


  leftovers = available_ingredients % ingredients_req_for_item_to_make # assuming the serving_size_mod = leftovers.  Presumably order quantity is volume of ingredients, and serving size is amount of product made.

  case leftovers # based on text below, this is leftover ingredients
  when 0
    return "Calculations complete: Make #{available_ingredients/ingredients_req_for_item_to_make} of #{item_to_make}" # IF there no leftovers, return this.
  else
    return "Calculations complete: Make #{available_ingredients/ingredients_req_for_item_to_make} of #{item_to_make}, you have #{leftovers} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE" #This is good for helping understand the purpose of the code.
  end
end

p serving_size_calc("pie", 7)
# With the variables named as is, we are asking to make 7 pies, and its telling us we can only make 1, does that make sense?
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

