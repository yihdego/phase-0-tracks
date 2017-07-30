# Inputing the first name variable then the last name variable.
# making them a variable where the last is printed before the first
# identifying all [a,e,i,o,u] and comparing them to another variable string "aeiou" and replacing them with a different index

puts "what is your name secret agent?"
name = gets.chomp
alias_name = name.split (' ')
puts [alias_name[1],alias_name[0]]
secret_name = [alias_name[1]+" "+alias_name[0]]
puts secret_name

vowel = ['a','e','i','o','u']

agent_name = alias_name[1].split('')
p agent_name.at(0)
p agent_name.select {|vowel| vowel}
p agent_name.select { |v| v=~/[aeiou]/ }
p agent_name.join


index = 0
while index < alias_name.length
	v=['a','e','i','o','u']
	l=secret_name[index]
	l_next=(v.index(l).rotate)
	secret_name[index]=v[l_next]
	index += 1
end
puts secret_name

# if agent_name.select { |v| v=~/[aeiou]/ }
# 	agent_name.at(index+1)
# end
