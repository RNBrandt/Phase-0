# Build a simple guessing game


# I worked on this challenge [by myself,].
# I spent [2] hours on this challenge.
=begin
# Pseudocode

# Input: User provided Integer INPUT
# Output: If the input was high out put will be ':high'
If the input us low the output will be ':low'
If the input is the correct number it will return ':correct'
If the game is solved game#solved? will return true.

# Steps:
1)  set all the instance methods
2) set all of the variables to their respective default values.
3) The initialize code will set a new INSTANCE that takes the answer as an INPUT and saves it as a CLASS variable.
4) The guess method will take a user input, and compare it to the @answer.  If the guess is low the uutput will be ':low'  if it's high the output will be :high' and if it's correct the output will be ':correct'
5) the Solved method will RETURN a BOOLEAN if the correct answer has been given
=end
# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  def guess(guess)
    @guess = guess
    if @guess == @answer
      return :correct
    elsif @answer < @guess
      p :high
    elsif @answer > @guess
      p :low
    end
  end
  def solved?
    p (@guess == @answer)
  end
end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  def guess(guess)
    case @guess
    when @guess == @answer
      :correct
    when @answer < @guess
      :high
    else @answer > @guess
      :low
    end
  end
  def solved?
    p (@guess == @answer)
  end
end
=begin
# Reflection
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

  They work within the context that they are created.  Which is to say, that they live in a need to know basis, if it doesn't relate to them, they don't do anything about it.  If, however, they're declaired as case variables... well then, they need to know!

When should you use instance variables? What do they do for you?

  You should use instance variables when you only want the variables to be readible within the method you created, this is important for the security of your code.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control is really just about the careful release of variables and data.  If you make it so only the proper method has the proper access to variables and data it's not overly complex.  I didn't really have trouble with flow control during this challenge, but I imagine it will be more difficult as the process continues.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

  Symbols are great be cause any symbol name refers only to one object throughout a ruby program. Effectivly symbols are more efficient strings because any sybol with the same name is still only one symbol.

=end