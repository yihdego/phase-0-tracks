module Shout
  def self.yell_angrily(words)
  	words + "!!!" + ":("
  end
  def self.yelling_happily(words)
  	words + "!!!" + "=3"
  end
end

p Shout.yell_angrily("Hello")
p Shout.yelling_happily("Hello")