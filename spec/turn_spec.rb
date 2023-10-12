require './lib/turn'
require './lib/card'
require 'rspec'
RSpec.describe Turn do
  it 'exists' do
    turn = Turn.new("Kodiak", :card)

    expect(turn).to be_instance_of(Turn)
  end

  it "has a card" do
    turn = Turn.new("Kodiak", :card)
  
    expect(turn.card).to eq(:card)
  end

  it "has a guess" do
    turn = Turn.new("Kodiak", :card)

    expect(turn.guess).to eq("Kodiak")
  end

  it "checks the guess against answer" do
    turn = Turn.new("Kodiak", :card)
    card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    
  end
end