# Release 4:

# refactor this code to move method assignments to attr_ attributes. Like we did with age. Let's pare down the superfluous code.

# Your Code Here:

class Profile
# first let's finish refactoring this code
# note that there is a way to add all of the variables like :age on one line, how would we do that?
  class NameData
  attr_reader :name

  def initialize
    @name = "Reuben"
  end
end

class Receiver
  def initialize
    @sentence = NameData.new #created a new variable that inherits methods from NameData Class
  end

  def hello
    puts "Hello #{@sentence.name}! How wonderful to see you today."
  end
end

receiver = Receiver.new
receiver.hello