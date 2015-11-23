# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# Input is the array, and minimum size of the array, and padding value.
# What is the output? (i.e. What should the code return?)
# Output is the array padded to the the minimum size.
# What are the steps needed to solve the problem?
# method to count length of array
# see if length is less than min
# method to push variable to minimum size with padding value


=begin# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    array
  else
    until array.length== min_size
      array.push(value)
    end
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  if new_array.length>= min_size
    new_array
  else
    until new_array.length == min_size
      new_array.push(value)
    end
    return new_array
  end
end
=end

# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  array << value while array.length < min_size
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  new_array << value while new_array.length < min_size
  new_array
end


=begin
# 4. Reflection
-Were you successful in breaking the problem down into small steps?

Yes

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

More or less, there were some challenges in some of the specific syntax, but for the most part the initial solution was fairly straight forward.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

  We had some basic syntax issues, but once we solved them the initial program passed the tests.

When you refactored, did you find any existing methods in Ruby to clean up your code?

Yes we did.
How readable is your solution? Did you and your pair choose descriptive variable names?

It seems pretty readible to me, I imagine you need to have some basic coding knowledge to understand it, but all the variables make sense for what they are.

What is the difference between destructive and non-destructive methods in your own words?

destructive methods replace the input completely, where non-destructive methods make a copy of the initial input so changes are made to the copy, preserving the integrity of the input.
=end