require "./lib/card"
require "./lib/turn"
require "./lib/deck"
require 'rspec'

RSpec.describe Deck do 
  it 'exists' do
    deck = Deck.new(@cards)
    expect(deck).to be_instance_of(Deck)
  end

  it 'has cards' do
    deck = Deck.new(@cards)

    expect(deck.cards).to eq(@cards)
  end

  it 'can count cards' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    expect(deck.count).to eq(3)
  end

  it 'returns cards from a category' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    expect(deck.cards_in_category(:Geography)).to eq([card_1])
  end
end
