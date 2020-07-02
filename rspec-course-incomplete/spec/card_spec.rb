require "../card.rb"

RSpec.describe Card do
  let(:card) { Card.new("Ace", "Spades") } #Lazy loader. Will only load when :card needs to be called.
  #because we use LET. Memoization(cached) happens where each time card is called in an example block, it will be called once (the first time it comes across card), then thereafter use that instance of card. If this was a method then this would not work as card would recall the method for that new instance of card.
  it "has a rank " do
    expect(card.rank).to eq("Ace")
    card.rank = "Queen"
    expect(card.rank).to eq("Queen")
  end
  it "has a suit" do
    expect(card.suit).to eq("Spades")
  end
  it "has a custom error message" do #custom message whereby if an incorrect suit is entered that is not "Spades" will show message below.
    comparison = "Spades"
    expect(card.suit).to eq(comparison), "Expected #{comparison}, but received #{card.suit} instead"
  end
end
# want to describe the behaviour of this test. Don't describe HOW it will be built. But WHAT it's doing.
# can write this as RSpec.describe('Card'). This test is called an example and a group is called an example group
