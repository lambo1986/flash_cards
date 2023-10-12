require "rspec"
require './lib/turn'
require './lib/card'
require './lib/deck'
require './lib/round'
RSpec.describe Round do
  it 'exists' do
    round = Round.new(@deck)
   
    expect(round).to be_instance_of(Round)
  end

  it 'has a deck' do
    round = Round.new(@deck)

    expect(round.deck).to eq(@deck)
  end

  it 'has a turns array' do
    round = Round.new(@deck)

    expect(round.turns).to eq([])
  end
end
