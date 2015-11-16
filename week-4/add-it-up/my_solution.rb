
# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Reggie ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array
# Output: sum of numbers in array
# Steps to solve the problem.
# length.array
#take first number, add to second number, add to third number etc...

# 1. total initial solution
array = []
def total(array)
sum=0
x= array.length
while x>=0
sum+=array(x-1)
x-=1


# 3. total refactored solution

def total(array)
    x = array.length
    sum = 0
        while x > 0
            sum += array[x-1]
            x -= 1
        end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution
def sentence_maker(array)
    x = 0
    sum = ""


        while x < (array.length - 1)
            sum += array[x].concat " "

            x += 1
        end
            sum += array[x].concat "."
    return sum

end


# 6. sentence_maker refactored solution
def sentence_maker(array)
    x = 0
    sum = ""

        while x < (array.length - 1)
            sum += array[x].concat " "
            x += 1
        end
            sum += array[x].concat "."
    return sum

end