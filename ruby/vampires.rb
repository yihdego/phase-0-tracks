processed_applicants = 0


puts "How many applications are we processing?"
goal = gets.to_i

while processed_applicants < goal

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

	if resp_health == "yes" || resp_health == "Yes"
		immortality = false
	else resp_health == "no" || resp_health == "No"
		immortality = true
	end

	if resp_garlic == "yes" || resp_garlic == "Yes"
		allergic = false
	else resp_garlic == "no" || resp_garlic == "No"
		allergic = true
	end

case
	when lied_age == false && allergic == false || immortality == false
		puts "Probably not a vampire."
	when lied_age == true && (allergic == true || immortality == false) || (allergic == false || immortality == true)
		puts "Probably a vampire."
	when lied_age == true && (allergic == true && immortality == true)
		puts "Almost certainly a vampire."
	when resp_name == "Drake Cula"
		puts "Definitely a vampire."
	when
		puts "Results inconclusive."
	end
end	
	processed_applicants +=1
end