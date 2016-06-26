require_relative "parser"
class Controller
  attr_reader :view,:deck
  attr_accessor :score
  def initialize
    @view = View.new
    @deck = Deckmodel.new
  end

  def load_game
    # this section will run an create teh deck and the cards
    # depending on the user selection
   deck_select = view.choose_deck
   deck_option = deck_options(deck_select)
   deck.create_cards(deck_option)
   system "cls"
   play_game(deck)
   view.game_over(deck.score,deck.cards)
   #  binding.pry
  end

  def deck_options(deck_select)
    #  binding.pry
    case deck_select
    when "1"
      "nighthawk_flashcard_data.txt"
    when "2"
      "otter_flashcard_data.txt"
    when "3"
      "raccoon_flashcard_data.txt"
    else
      view.display_error
    end
  end

  def play_game(deck)
    deck.cards.each do  |card|
      answer = view.dispay_question(card)
      if answer.downcase == card.answer
        deck.score_calculate
      end
    end
  end

end
