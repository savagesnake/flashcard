class View
  def user_input
    gets.chomp.downcase
  end

  def choose_deck
  puts "\n\n+++++++ FLASHCARD GAME ++++++++\n\n"
  puts "Select Flashcard Deck \n(1,2,3) to start game"
  puts "="*27
  puts "1. Nighthawk"
  puts "2. Otter"
  puts "3. Raccoon"
  file_name = user_input
  end

 def dispay_question(card)
    puts card.question
    user_input
 end

 def game_over(score, deck_size)
  puts "+++ Game Over  +++++++++++++"
  puts "  Your Score "
   puts "="*50
   puts " You got #{score} correct out of #{deck_size.length} "
 end
 def display_error
   raise "Sorry something when wrong or invalid option"
 end



end
