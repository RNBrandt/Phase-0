=begin
Step 1) is to INPUT all the names and information, This can initially be done with an array, a hash can be used later if more information is required.

step 2) is to RANDOMIZE the list.

Step 3) is to INPUT EACH randomized name into a group of 4

Step 4) is to ensure that no groups are LESS than 3, by add

=end
def accountability(names)
  acct = Array.new
  acct = names.shuffle
  acct = acct.each_slice(4).to_ary
