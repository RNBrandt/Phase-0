# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [1] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# an array
# What is the output? (i.e. What should the code return?)
# the most occuring item in the array
# What are the steps needed to solve the problem?
# 1) input array into the function
# 2) count number of times each item appears in the array
# 3) Find item that occurs most frequently
# 4) Return that item


# 1. Initial Solution
def mode(array)
 frequency = Hash.new(0)
   array.each do |item|
     frequency[item] += 1
   end
 puts frequency
max_value = frequency.values.max
max_item = frequency.select{|key, value| value == max_value}.keys
return max_item
end



# 3. Refactored Solution
def mode(array)
  freq = array.each_with_object(Hash.new(0)) { |word, occurance| occurance[word] += 1 }
    new_array = freq.select{ |k, v| v == freq.values.max }.keys
      new_array
end

# 4. Reflection

=begin
  Which data structure did you and your pair decide to implement and why?

  we chose to implement a Hash because it allowed us to easily pair a number value to each key.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
  I think we were equally successful.
What issues/successes did you run into when translating your pseudocode to code?
  There always seem to be bits that we neglect in the pseudocoding. Fortunately, the errors help us figure all that non-sense out so we can correct them and include it in future pseudocoding.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We used:

New_hash, each, and select.  All of them were useful in refactoring we were just sore to use them in a more elegant way. None of them were particularly difficult to implement.


=end