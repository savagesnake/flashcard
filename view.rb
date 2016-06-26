class View
  def user_input
  STDIN.gets.chomp.downcase
  end

  def choose_deck
  puts "\n+++++++ FLASHCARD GAME ++++++++\n"
  puts "\n You did not choose a deck to play \n\n"
  puts "="*50
  puts "\n To load a deck enter the deck name after the runner file \n ex.(ruby runner.rb nighthawk) \n \n"
  puts " [ Options ]"
  puts " - Nighthawk"
  puts " - Otter"
  puts " - Raccoon"
  # file_name = user_input
  end

 def dispay_question(card)
    puts "\n#{card.question}"
    user_input
 end

 def correct
   puts "Correct!"
 end
 def wrong(answer)
   puts "The answer is #{answer}"
 end

 def game_over(score, deck_size)
  puts "\n\n+++ Game Over  +++++++++++++"
  puts "  Your Score "
   puts "="*50
   puts " #{score} correct out of #{deck_size.length}"
 end

 def display_error
   raise "Sorry something when wrong or invalid option was enter try ( ruby runner.rb help )"
 end

end
