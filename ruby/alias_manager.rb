# Inputing the first name variable then the last name variable.
# making them a variable where the last is printed before the first
# identifying all [a,e,i,o,u] and comparing them to another variable string "aeiou" and replacing them with a different index

# Inputing the first name variable then the last name variable.
# making them a variable where the last is printed before the first
# identifying all [a,e,i,o,u] and comparing them to another variable string "aeiou" and replacing them with a different index

# ignored instruction to skip if stuck so spent too much time trying to build algorythm rather than finishing rest of prompt.

name = {
  first: '',
  last: ''
}
codename = {
  first: '',
  last: ''
}

loop do


puts "what is your name secret agent?"
answer = gets.chomp
full_name = answer.split (' ')
name[:first] = full_name[0]
name[:last] = full_name[1]

codename[:last] = name[:first].chars.map!{|letter| letter.next}.join('').capitalize
codename[:first] = name[:last].chars.map!{|letter| letter.next}.join('').capitalize
puts "Your secret identity is #{codename[:first]} #{codename[:last]}."
puts "Do you have another name agent?"
another = gets.chomp
  if another == "no"
    puts name
    break
    puts name
  else
end
end
# agent_name1 = "#{name[:first]} #{name[:last]}".split('')
# agent_name1.at(0)
# agent_name1.select {|vowel| vowel}
# vowels_name1 = agent_name1.select { |v| v=~/[aeiou]/ }
# const1 = agent_name1.select { |c|c=~/[bcdfghjklmnpqrstvwxyz]/}

# index = 0
# while index < agent_name1.length
#   vowel = "aeiou"
#   const = "bcdfghjklmnpqrstvwxyz"
#   l = agent_name1[index]
#     if l = 'a'||'e'||'i'||'o'||'u'
#       vowel_next = (vowel.index(l)+1)
#       agent_name1[index] = vowel[vowel_next]
#     else
#       const_next = (const.index(l)+1)
#       agent_name1[index] = const[const_next]
#     end
#   index +=1
# end

# puts agent_name1