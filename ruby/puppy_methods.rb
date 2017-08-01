class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

buddy = Puppy.new

p buddy.fetch("ball")

def speak(repeat)
	index = 0
	while index < repeat
		puts "woof"
		index += 1
	end
end

speak(2)

def roll_over
	puts "rolls over"
end

roll_over

def dog_years(human_years)
	(human_years)*7
end

dog_years(5)

def play_dead
	puts "lies down and rolls on back"
end

play_dead