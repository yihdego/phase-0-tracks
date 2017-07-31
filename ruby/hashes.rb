# Puts statement asking for user info and stores responses in appropaite varialbe using getchomp
# When data is store into hash print hash
# if else if they want to update a variable, if yes ask which variable which is another if elsif
# once entered print latest version and end

client = {
	name: '',
	age: nil,
	num_kids: nil,
	decor_theme: '',
	returning_client: nil
}

puts "This is the program of Amanuel studios, can I get your name?"
client[:name] = gets.chomp
puts "What is your age?"
client[:age] = gets.to_i
puts "How many children live with you?"
client[:num_kids] = gets.to_i
puts "Your decor theme you are looking to recieve?"
client[:decor_theme] = gets.chomp
puts "Are you a returning client of Amanuel studios?"
resp_return = gets.chomp
	if resp_return == "yes"
		client[:returning_client] = true
	else
		client[:returning_client] = false
	end

puts client 

puts "Did all this information look correct?"
resp_correct = gets.chomp
	if resp_correct == "no"
		puts "What needs to be updated? is it name, age, kids or decor?"
		resp_change = gets.chomp
			if resp_change == "name"
				puts "Your name?"
				client[:name] = gets.chomp
			elsif resp_change = "age"
				puts "Your age?"
				client[:age] = gets.chomp
			elsif resp_change == "kids"
				puts "How many kids?"
				client[:num_kids] = gets.to_i
			elsif resp_change == "decor"
				puts "Your preffered decor?"
				client[:decor_theme] = gets.chomp
			else
				puts "not valid response"
			end
			puts "Reviewing your response"
			puts client
	else
		puts "Thanks for your time"
	end