class Santa
	attr_reader :ethnicity
	attr_accessor :age, :gender
	
	def initialize(gender,ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking= 	["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end
	def gender= (assigned_gender)
	  @gender = assigned_gender
	end
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end
	def celebrate_birthday=(new_birthday)
		@age = new_birthday
	end
	def get_mad_at= (which_reindeer)
 @reindeer_ranking.delete(which_reindeer)
 @reindeer_ranking << (which_reindeer)
	end
end


santa = Santa.new("Female", "Hispanic")
santa.celebrate_birthday = 1
santa.get_mad_at = "Vixen"
p santa
santa.gender = "undisclosed"
p santa.age
p santa.ethnicity
