
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
	allergic = false
else
	allergic = true
end

if lied_age == false && allergic == false || immortality == false
	puts "Probably not a vampire."
elsif lied_age == true && allergic == false || immortality == true
	puts " Probably a vampire."
elsif lied_age == true && allergic == true && immortality == true
	puts "Almost certainly a vampire."
elsif resp_name == "Drake Cula" || "Tu Fang"
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end