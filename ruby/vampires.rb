
puts "What is your name?"
resp_name = gets.chomp
puts "How old are you?"
age = gets.to_i
puts "What year were you born?"
year_born = gets.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
resp_garlic = gets.chomp
puts "Would you like to enroll in the company’s health insurance?"
resp_health = gets.chomp


if year_born == (2017-age)
	lied_age = false
else
	lied_age = true
end

if resp_health == "yes"
	immortality = true
else
	immortality = false
end

if resp_garlic == "yes"
	allergic = no
else
	allergic = yes
end
