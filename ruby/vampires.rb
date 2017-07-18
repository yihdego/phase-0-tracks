
puts "What is your name?"
resp_name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts " What year were you born?"
year_born = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
resp_garlic = gets.chomp
puts "Would you like to enroll in the company’s health insurance?"
resp_health = gets.chomp

if year_born = 2017 - age
	puts "Probably a werewolf"
else
	puts "Probably a vampire"
end