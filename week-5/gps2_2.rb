# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
Matthew

# use .split(" ") to separate the list to individual items.
# Likely create a hash
# p hash for the final step.
# change default from nil to 0

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:


def new_list
  Hash.new()
end

def add_item(list, item, quantity)
  list[item] = quantity

end

def remove_item(list, item)
  list.delete(item)
end

def update_list(list, item, quantity)
  list[item] = quantity
end

def print_list(list)
  list.each do |item,quantity|
    print" #{quantity} #{item}, " #We know key and values are switched.  We refactored this to read naturally.
  end
end

grocery_list = new_list


add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
print_list(grocery_list)
remove_item(grocery_list, "Lemonade")
update_list(grocery_list, "Ice Cream", 1)
print_list(grocery_list)


