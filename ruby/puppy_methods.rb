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

dbc = []

    index = 0
    while index < 50
    student = Developer.new  
    dbc.push(student) 
    index += 1
  	end
   
dbc.each do |programer|
programer.pseudocode
programer.code 
end