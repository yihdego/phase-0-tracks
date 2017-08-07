# This assignment is an example why waiting until the last day is a bad idea
# Week 5's hashes still dont make sense to me and I dont catch the office hours whenever I'm doing these assignments
# I ended up using only arrays but i felt an optimal solution probably involved hashes
# I couldn't get the loops to work the way I wanted to before running out of time.

class GuessWord
  attr_accessor :puzzle
  attr_accessor :word
  attr_accessor :blanks
  attr_accessor :guesses
  attr_accessor :guess_count
  def initialize(input)
    @word = input
    @blanks = []
    @letter = nil
    @is_done = false
    @guesses = word.length + 2
    @puzzle = []
    @guess_count = 0
  end
  def blanks=(word)
    how_blanks = @word.length
    @blanks = []
    index = 0
    while index < how_blanks
      @blanks.push('_ ')
      index += 1
    end
    @blanks = blanks.join
  end
  # def check_guess
  #   @guess_count += 1
  #   if @puzzle == @guess
  #     @is_done = true
  #   else
  #     false
  #   end
  # end
  def letter_locator(new_letter)
    game = @word.split('')
    index = 0
    while index < @word.length
      if game.at(index) == new_letter
        guess_letter = true
        puzzle.delete_at(index)
        puzzle.insert(index, new_letter)
        p puzzle
        index += 1
      else
        guess_letter = false
        @guess_count += 1
        puts "wrong guess again"
        index += 1
      end
    end
  end
  
end
puts "Player 1 give me a word"
player1word = gets.chomp
game = GuessWord.new(player1word)
game.blanks = game.word
game.puzzle = game.blanks.split(' ')
puts "Player 2 guess #{game.guesses} times what letters are in this patter (#{game.blanks})"
guess = gets.chomp
game.letter_locator(guess)


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