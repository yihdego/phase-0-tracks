class Puppy

	def fetch(toy)
	    puts "I brought back the #{toy}!"
	    toy
	end

	def speak(repeat)
		index = 0
		while index < repeat
			puts "woof"
			index += 1
		end


	def roll_over
		puts "rolls over"
	end

	def dog_years(human_years)
		(human_years)*7
	end

	def play_dead
		puts "lies down and rolls on back"
	end

	def initialize
		puts "Initializing new puppy instance ..."
	end

end

# Drivercode
buddy = Puppy.new
buddy.fetch("ball")
buddy.speak(3)
buddy.roll_over
buddy.dog_years(3)
buddy.play_dead



end

class Developer

  def pseudocode
    puts "comments and brainstorms code"
  end

  def code
    puts "Writes and designs program"
  end

  def initialize
    puts "Initialize programer instance"
  end
end
guillermo = Developer.new
amanuel = Developer.new
dbc = [guillermo, amanuel]
  # Cody = "Cody"
  #   index = 0
  #   while index < 5
  #   Cody = Developer.new  
  #   dbc['Chicago'].push(Cody) 
  #   index += 1
  # end
   
dbc.each do |programer|
programer.pseudocode
programer.code 
end 
# dbc = {
#   'Chicago' => []
# }
#   programer = "John Doe"
#     index = 0
#     while index < 5
#     programer[index]= Developer.new 
     
#     index += 1
#   end
 
# #Driver Code 
#   Guillermo = Developer.new 
#   Guillermo.pseudocode
#   Guillermo.code