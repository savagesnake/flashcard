require_relative "parser"
class Controller
  attr_reader :view,:deck
  attr_accessor :score
  def initialize
    @view = View.new
    @deck = Deckmodel.new
  end

  def load_game
    commands = ARGV
    return view.choose_deck if commands.empty?
    return view.choose_deck if commands[0].downcase == "help"
    # this section will run an create teh deck and the cards
    # depending on the user selection
   deck_select = commands[0]
   deck_option = deck_options(deck_select)
   deck.create_cards(deck_option)
   system "cls"
   play_game(deck)
   view.game_over(deck.score,deck.cards)
   #  binding.pry
  end

  def deck_options(deck_select)
    #  binding.pry
    case deck_select.downcase
    when "nighthawk"
      "nighthawk_flashcard_data.txt"
    when "otter"
      "otter_flashcard_data.txt"
    when "raccoon"
      "raccoon_flashcard_data.txt"
    else
      view.display_error
    end
  end

  def play_game(deck)
    deck.cards.shuffle.each do  |card|
      answer = view.dispay_question(card)
      if answer.downcase == card.answer.downcase
        deck.score_calculate
        view.correct
      else
        view.wrong(card.answer)
      end
    end
  end

end
