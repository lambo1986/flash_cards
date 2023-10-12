require 'pry'
require './lib/card'
card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card.question
card.answer
card.category
require './lib/turn'
turn = Turn.new("Juneau", card)
turn.card
turn.guess
turn.correct?
turn.feedback
require './lib/deck'
require './lib/round'
card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
deck = Deck.new([card_1, card_2, card_3])
round = Round.new(deck)
round.deck
round.turns
binding.pry
