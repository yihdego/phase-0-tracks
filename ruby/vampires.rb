
puts "what is your name?"
resp_name = gets.chomp
puts "how old are you?"
age = gets.chomp
puts "can we order you garlic?"
resp_garlic = gets.chomp
puts "Would you like to endroll in company healthcare?"
resp_health = gets.chomp

if age >= 100
	puts "Probably a vampire"
else
	puts "Probably a werewolf"
end