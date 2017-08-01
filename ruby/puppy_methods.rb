class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

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

buddy = Puppy.new

p buddy.fetch("ball")
speak(2)
roll_over
dog_years(5)
play_dead