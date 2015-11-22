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
#IF the code has fewer than 4 digits it returns as is.
# second is to SEPARATE the individual numerals (maybe every three numerals)
# Third is to INSERT commas every third numeral
#Fourth is to put everything back together

=begin
# 1. Initial Solution
def separate_comma(number)
   number = number.to_s
   if number.length < 4
    return number
  else
    number = number.reverse.split("")
    index = 3
    while index < number.length
      number.insert(index, ",")
      index+=4
  end
    return number.reverse.join
  end
end

=end

# 2. Refactored Solution
def separate_comma(number)
    number = number.to_s.reverse
    index = 3
    while index < number.length
      number.slice(0, number.length)
      number.insert(index, ",")
      index+=4
    end
   p number.reverse
end

separate_comma(1234567890)


# 3. Reflection
#What was your process for breaking the problem down? What different approaches did you consider?

# It was a question of looking at the problem and loooking at the tools I at my disposal.  My first goal was to get the exceptions out of the way, so anything less than 4 digits was excluded.  From there I also knew I was going to have to turn it into a string, separate the digits, and add the commas to the arrays.  That was as far as I could go with the pseudocode, as it simply got too detailed and I just had to fiddle.

#Was your pseudocode effective in helping you build a successful initial solution?

#Yeah, it was good to force myself to sit down and focus on the individual aspects of the problem.

#What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# I looked into other methods of completing this task, and found that slice could do what split had done, I don't really think this was more readable but I feel like with a bit more knowledge I could create separate arrays in groups of three and JOIN them with commas, I tried hard to make that work, but couldn't make it happen.  What I did find was my initial requirement from the pseudo-code, wasn't necessary as it was implied by the remainder of the method, so I removed it, as well as all the returns that I often forget are implicit.

#How did you initially iterate through the data structure?
#I separated the string and used a WHILE loop to iterate through the method.

#Do you feel your refactored solution is more readable than your initial solution? Why?

#Maybe slightly, becuse the SPLIT method has an explicit beginning and end.

