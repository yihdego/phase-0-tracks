class GuessWord
  def initialize(input)
    puts "initialize game..."
    @word = input
    @blanks = []
  end
  def word
    @word
  end 
  def blanks
    @blanks
  end
  def word=(new_word)
    @word = new_word
  end
  def blanks=(word)
    how_blanks = @word.length
    index = 0
    while index < how_blanks
      @blanks.push('_ ')
      index += 1
    end
    @blanks = blanks.join
  end
  
end

# game = GuessWord.new("yellow")
# p game.word
# game.blanks = game.word
# p game.blanks