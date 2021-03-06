# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [adding itmes to the list using .slpit(' ')]
  # set default quantity (1)
  # print the list to the console [can you use one of your other methods here?]
# output: [hash]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: adding one items at a time with quantity
# output: [hash]

# Method to remove an item from the list
# input: which list we're using and items we want to remove
# steps: search and remove key and value
# output: [hash]

# Method to update the quantity of an item
# input: what list we're working on, key and new value
# steps: search for key and update value to new value given
# output: [hash]

# Method to print a list and make it look pretty
# input: [hash]
# steps: add puts statement and keying in keys and values from hash, sorted alphapethically
# output: [string]



def create_list(items)
	grocery_list = {

}
	list = items.split(' ')
	list.each do |kart|
	grocery_list[kart] = 1
	end
grocery_list
end

def add_item(users_list,item, quantity)
	users_list[item] = quantity
end

def remove_item(users_list,item)
	users_list.delete(item)
end

def update_item(users_list, item, quantity)
	users_list[item] = quantity
end

def print_list(users_list)
	puts "Here's your grocery list"
	users_list.each do |key, value|
  	puts "#{key} #{value}"
	end
end

# Add the following items to your list
# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4
# Remove the Lemonade from your list
# Update the Ice Cream quantity to 1
# Print out your list (Is this readable and nice looking)?

grocery_list = create_list('apples oranges bananas')

add_item(grocery_list,"ice cream", 1)
remove_item(grocery_list, "apples")
update_item(grocery_list,"ice cream", 2)
print_list(grocery_list)

add_item(grocery_list,"lemonade",2)
add_item(grocery_list,"Tomatoes",3)
add_item(grocery_list, "Onions",1)
remove_item(grocery_list, "lemonade")
update_item(grocery_list,"ice cream",1)
print_list(grocery_list)

# Release 4: Reflect

# What did you learn about pseudocode from working on this challenge?
# This was the first time psuedocoding with a partner. I learned that its tough to vocal ideas when you dont feel as smart on the subject as your partner but that its a disservice not to say anything.
# What are the tradeoffs of using arrays and hashes for this challenge?
# More code meaning its less clean, but you get a better idea of where you code is coming from.
# What does a method return?
# The method returns the hash from the input variables.
# What kind of things can you pass into methods as arguments?
# You can pass strings and intergers.
# How can you pass information between methods?
# By exporting your code into the hash in the code and then having the hash listed beneath the method.
# What concepts were solidified in this challenge, and what concepts are still confusing?
# I think that I have a hard time doing this by myself, I had a partner who was pretty much right on her first attempt.