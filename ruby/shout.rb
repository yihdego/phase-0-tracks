# module Shout
#   def self.yell_angrily(words)
#   	words + "!!!" + ":("
#   end
#   def self.yelling_happily(words)
#   	words + "!!!" + "=3"
#   end
# end

# p Shout.yell_angrily("Hello")
# p Shout.yelling_happily("Hello")

module Shout
	def yelling_angrily(words)
   	puts words + "!!!" + ":("
    end
	def yelling_happily(words)
   puts words + "!!!" + "=3"
    end
end

class Seahawks
	include Shout
end

class Wrestling_fan
	include Shout
end

seahawks = Seahawks.new
seahawks.yelling_happily("Go Hawks ")

mark = Wrestling_fan.new
mark.yelling_angrily("Boo ")
