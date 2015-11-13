# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  if (a==0) || (b==0) || (c==0) # in case a side is 0
    puts false
  elsif (a + b < c) || (b + c < a) || (a + c < b) # determines if a triagle can exist.
    puts false
  else # those are the two ways a triangle can't exist, so the rest is true.
    puts true
  end
end