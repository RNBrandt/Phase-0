# Numbers to Commas Solo Challenge

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# The input is multiple digit integers without commas
# What is the output? (i.e. What should the code return?)
# The code should output the same number but with a comma separating each three digits
# What are the steps needed to solve the problem?
# Change the number to a string
#first thing is to ensure that any code number that has fewer than 4 digits is returned as is.
# second is to separate the individual numerals (maybe every three numerals)
# Third is to insert commas every third numeral
#Forth is to put everything back together


# 1. Initial Solution
def separate_comma(number)
   number = number.to_s
   if number.length < 4
    return number
  else
    number = number.reverse.split("")
    index = 3
    while index< number.length
      number.insert(index, ",")
      index+=4
    end
    return number.reverse.join
  end
end



# 2. Refactored Solution




# 3. Reflection
#What was your process for breaking the problem down? What different approaches did you consider?

# It was a question of looking at the problem and loooking at the tools I at my disposal.  My first goal was to get the exceptions out of the way, so anything less than 4 digits was excluded.  From there I also knew I was going to have to turn it into a string, separate the digits, and add the commas to the arrays.  That was as far as I could go with the pseudocode, as it simply got too detailed and I just had to fiddle.

#Was your pseudocode effective in helping you build a successful initial solution?

#Yeah, it was good to force myself to sit down and focus on the individual aspects of the problem.

#What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# I have to come back to this after I've finished refactoring it!

#How did you initially iterate through the data structure?
#Do you feel your refactored solution is more readable than your initial solution? Why?

#Initially I did a while loop to iterate through the array, as of writing this I still did a while loop, so
