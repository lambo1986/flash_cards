class Card
    attr_reader :category
    def initialize(question, answer, category)
        @question = question
        @answer = answer
        @category = category
    end
end

Card.new
