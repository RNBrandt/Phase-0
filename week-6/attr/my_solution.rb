#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class Emitter
  def important_method
    return 5
  end
end

class Receiver
  def initialize
    @emitter = Emitter.new
  end

  def Greetings
    puts @emitter.important_method + 5
  end
end



greetings = Greetings.new
greetings.Greetings
# Reflection
=begin
Release 1)
- These methods take an existing hash compare it to a default value, and change those values based on the input.
- They are overwritting the class variables for the entire method, so you can only have one person in the system as this code is currently written.

Release 2)
- It removed the the what_is_age() instance method and replaced it with a attr_reader: attribute so it can be changed from out of the method

- the def what_is_age() method was replaced

- This code is simpler.

Release 3)

- Now that the attr includes a writer, it means the new changes can be both read and written, which replaces the change_my_age method.

- This is simpler still.

Release 4)

By calling the attr_accessor attribute on age, it combines the refactoring done by the previous two versions this makes it both writeable and readible. in one attribute.

The code is much simpler than the last version

What is a reader method?

- A reader method is a method that has the attribute of being readible, but cannot be rewritten outside the methdo

What is a writer method?

- A writer method is a method that has the attribute of being writable but not readible outside the method

What do the attr methods do for you?

-attr methods allow you to both read and write outside the specific variable. I'm still waiting to learn the difference between this and global variables.


Should you always use an accessor to cover your bases? Why or why not?

- No, security is a thing!  Work on a needs to know, and needs to write basis.  If as the engineer you can figure out when things need to be written or read, or both. Never gibe more than you need to.


What is confusing to you about these methods?

Nothing yet. As things progress, however I'm sure something will become quite complecated.


=end