def hello
  puts "Hello World!"
  yield("Amanuel", "Toby")
end

hello { |name1 ,name2| puts "Welcome, #{name1} and #{name2}!" }

countries = ["America", "China", "Brazil"]
capital_cities = {
	America: "D.C",
	China: "Beijing",
	Brazil: "Brasisla"
}

countries.each {|countries| puts countries.upcase}

countries.map! do |country|
	puts country
	country.upcase
end

puts countries

capital_cities.each do |key, value|
	puts key.upcase
	puts value
end

puts capital_cities