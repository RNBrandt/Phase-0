# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I  ", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
    new_array = Array.new
    source.map {|word| new_array << word if (word.is_a? String) && (word.include?thing_to_find)}
     new_array
end


def my_hash_finding_method(source, thing_to_find)
  hash_array = Array.new
  source.each {|key, value| hash_array<< key if value == thing_to_find}
  hash_array
end

# Identify and describe the Ruby method(s) you implemented.
=begin
  -I used EACH, as a one-stop shop to iterate through both the Array and the Hash.
  - I used the SHOVEL method to get values that met the boolean into the output array.
  - I used is_a? method in the first portion of the problem because the include? method (described below) won't work on an integer. I put the is_a? method at the first part of an && boolean so the program would bypass the second statement if the first isn't true.

  -Finally I used a include? method to determine if the value INCLUDED the letter I was looking for



# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?

This is a tricky question because the intereaction we've had has been a bit sparce, but from other teaching interactions I've had, I've learned a great deal.  What's particularly important is that you have a firm grasp on what you're trying to teach because other people may not learn the same way you do.  When that happens you have to be able to come at the method from another perspective which is nearly impossible if you don't fully understand what you're trying to teach
=end