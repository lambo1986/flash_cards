require "./lib/card"
class Turn
    attr_reader :card, :guess
    def initialize(string, card)
        @card = card
        @guess = string
    end

    def correct?
        if guess == "Juneau"
            true
        else 
            false
        end
    end

    def feedback
        if guess == "Juneau"
            "Correct!!"
        else
            "Incorrect."
        end
    end
end

card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
turn = Turn.new("Kodiak", card1)
turn.correct?


