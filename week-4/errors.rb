# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase= "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 173, but really line 17
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input expecting keyword_end
# 5. Where is the error in the code?
#  the end of the method (missing end)
#
#
# 6. Why did the interpreter give you this error?
# two ends were required for this method, one for the method and the other for the while.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 38
# 2. What is the type of error message?
#undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# that the error is with 'south_park'
# 4. Where is the error in the code?
# 'main'
# 5. Why did the interpreter give you this error?
# there's no value associated with this string. It should be commented out, or given a value (I'm going to comment it out)

# --- error -------------------------------------------------------

def cartman(this)
while true
    puts "What's there to hate about #{thing}?"
end
end

# 1. What is the line number where the error occurs?
# 53
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
# No method defined
# 4. Where is the error in the code?
# line 53 column 9
# 5. Why did the interpreter give you this error?
# there needs to be a values in the method

# --- error -------------------------------------------------------

def cartmans_phrase(a)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#72
# 2. What is the type of error message?
#wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# (1 for 0)
# 4. Where is the error in the code?
# there needs to be an argument in the parentheses
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says ("adsf")

# 1. What is the line number where the error occurs?
# 91
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#0 for 1) (ArgumentError)
 # from errors.rb:95:in `<main>'

# 4. Where is the error in the code?
# line 95
# 5. Why did the interpreter give you this error?
# there is no argument where the method is called



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Dick")

# 1. What is the line number where the error occurs?
# 114
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#(1 for 2)
# 4. Where is the error in the code?
# 118
# 5. Why did the interpreter give you this error?
# there needs to be another argument in the defined method

# --- error -------------------------------------------------------

 "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 133
# 2. What is the type of error message?
# String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
#TypeError
# 4. Where is the error in the code?
# 133:in `*'
# 5. Why did the interpreter give you this error?
# when multiplying strings, the string has to come first (the computer takes it all rather literally)

# --- error -------------------------------------------------------

amount_of_kfc_left = 0/20


# 1. What is the line number where the error occurs?
# 148
# 2. What is the type of error message?
# divide by 0 error
# 3. What additional information does the interpreter provide about this type of error?
# (ZeroDivisionError)
# 4. Where is the error in the code?
#148:in `/'
# 5. Why did the interpreter give you this error?
# you can never divide by 0

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 164
# 2. What is the type of error message?
#LoadError
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file -- /Users/Reuben/Desktop/DBC/Phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# `require_relative'
# 5. Why did the interpreter give you this error?
# The interpreter is trying to load a file that I haven't create, thus can't be loaded.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?

#- I think the first one was the most challenging because the error didn't really point to where the error really was.

#How did you figure out what the issue with the error was?

# I knew and 'end' had to be placed somewhere, based on the error, so once I figured that out, the rest came fairly easily.

#Were you able to determine why each error message happened based on the code?

#yes

#When you encounter errors in your future code, what process will you follow to help you debug?

#I will definitely read the error code and try to determine the cause from that code.  If I still can't figure it out, I have a great friend Google, I can ask any time.