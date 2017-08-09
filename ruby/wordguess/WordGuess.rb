class GuessWord
  attr_accessor :puzzle
  attr_accessor :word
  attr_accessor :blanks
  attr_accessor :guesses
  attr_accessor :guess_count
  def initialize(input)
    @word = input
    @blanks = []
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
  def letter_locator(new_letter)
    user_guess = @word.split('')
    index = 0
    while index < @word.length
      if user_guess.at(index) == new_letter
        puzzle.delete_at(index)
        puzzle.insert(index, new_letter)
        p puzzle.join
        index += 1
      else
        index += 1
      end
    end
  end
end

# User Input
puts "Player 1 give me a word"
player1word = gets.chomp.downcase
game = GuessWord.new(player1word)
game.blanks = game.word
game.puzzle = game.blanks.split(' ')
# puts "Player 2 guess #{game.guesses} times what letters are in this patter (#{game.blanks})"
puts "Player 2 guess #{game.guesses} times what letters are in this pattern (#{game.puzzle.join})"
while player1word != game.puzzle.join
    guess = gets.chomp
    if player1word.include?(guess) == true
      game.letter_locator(guess)
    elsif
      game.guess_count+1 == game.guesses
      break
    else
      game.guess_count += 1
      puts "wrong, you've guessed #{game.guess_count} out of #{game.guesses}"
    end
  end
if player1word == game.puzzle.join
puts "congratulations"
else
puts "You've lost."
end