require_relative 'WordGuess'

describe GuessWord do
  let(:game) { GuessWord.new("cat") }

  it "Inputs word from first user" do
    expect(game.word).to eq "cat"
  end

  it "takes input and puts it into an array of missing letters" do
  	game.blanks("cat")
  	expect(game.blanks) to eq (["_ ","_ ","_ "])
 end
end