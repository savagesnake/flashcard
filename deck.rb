class Deckmodel
    attr_reader :cards,:card
    attr_accessor :score
    include Parser
    def initialize
      @cards = Array.new
      @score = 0
    end

    def create_cards(file)
     cards_hash = parser(file)
     cards_hash.each do |card_info|
        cards << Cardmodel.new(card_info)
     end
    end
    
    def score_calculate
        self.score +=1
    end
end
