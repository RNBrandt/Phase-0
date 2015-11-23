# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A series of symbols each represents a side to be returned randomly
# Output: A random symbol based on the input.
# Steps:
=begin
RAISE argument error if the method is passed an empty array.
Create a new Die CLASS, and pass it the number of sides.
Give it a method to complete, so it returns one of the symbols randomly.




# Initial Solution

class Die
  def initialize(labels)
     raise ArgumentError, 'Sides must be greater at least 1'unless labels.length > 0
    @sides =  labels.length
    @labels = labels
  end

  def sides
    return @sides
  end

  def roll
    @labels.sample
  end
end
=end


# Refactored Solution

class Die
  def initialize(labels)
     @sides =  labels.length
     raise ArgumentError, 'Sides must be greater at least 1'unless @sides > 0
    @labels = labels
  end

  def sides
    @sides
  end

  def roll
    @labels.sample
  end
end





=begin
# Reflection
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

I didn't need to change much to get this to work.  The main thing was using a the .length method to get the sides to represent integers.

What does this exercise teach you about making code that is easily changeable or modifiable?

That if you use broad categories for your inputs and outputs you can easily change them with a few keystrokes.

What new methods did you learn when working on this challenge, if any?

.sample to get a single random value

What concepts about classes were you able to solidify in this challenge?

using @classes within a method was solidified.

=end