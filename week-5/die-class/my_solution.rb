# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: roll command
# Output: a random number between 1 and 6
# Steps:
# 1) Create a new Die Class
# 2) Give it class attributes, specifically, number of sides
# 3) Give it a method to complete, specifically a random number based on the number of sides it has.


# 1. Initial Solution
=begin
class Die
  def initialize(sides)
    raise ArgumentError, 'Sides must be greater than 1' unless sides > 1
    @sides = sides
  end

  def sides
     return @sides
  end

  def roll
    return 1+ rand(sides)
  end
end
=end


# 3. Refactored Solution
class Die
  def initialize(sides)
    raise ArgumentError, 'Sides must be greater than 1' unless sides > 1
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    1+ rand(sides)
  end
end





=begin
# 4. Reflection
An ArgumentError is a way of forcing an error if it doesn't make sense for your code, but makes senes in the code (eg a one sided die).

initialize, rand, and raise are all new methods for me.  I didn't have any problem implementing them as I simply followed the directions from the various documents attached below.  I am a bit concerned, however, as I'm not 100% sure what initialize does.

A Ruby class is like a blueprint. We can take that exact same code for the 6 sided die, and by changing the number of sides it has, change the outcome of the decendant code.  That's really neat, and I imagine super useful.

Like a hash, where you can save information unique information of the same type (names, dates, etc...) a Class allows you to do take similar information, and rather than simply store it, you can run it through methods.

A local variable only exisists within the block of code in which it was called into existance, where an instance variable can be called across across different methods.

Instance variables can be used when you're trying to manipulate a variable across multiple methods

=end