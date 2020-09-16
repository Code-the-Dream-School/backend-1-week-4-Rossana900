# (2) Write a program hangman.rb that contains a function called hangman. 
# The function's parameters are a word and an array of letters. 
# It returns a string showing the letters that have been guessed. 
# Call the function from within your program so that you know that it works.

# Example: hangman("bob",["b"]) should evaluate to "b_b"
# Example: hangman("alphabet",["a","h"]) should return "a__ha___"

class Game

  attr_reader :word

    def initialize(word)
        @word = word.downcase
        @display_word = "_" * word.length
       
    end

   
    def guess_the_letter(g_letter)
        g_letter.downcase
        @word.split("").each_with_index do |w_letter, index|
            if g_letter == w_letter
                @display_word[index] = g_letter
                puts "Your progress so far" 
        p @display_word
            end
          if !@word.include? (g_letter)
            puts "Please try again"
          end
        end
    end

  
    def game_won?
      if    @word == @display_word
            puts "Congratulations Player 2, you won!"
            
          
      elsif
            false
      end
    end

end

puts "Welcome to the Hangman Game!"
puts "In this game the player 2 has to guess the secret word"
puts "Player 1, please enter the secret 7 letter word for player 2 to guess..."
game_word = gets.chomp

game = Game.new(game_word)

attempts = 1
guessed_letters = []


until attempts == game_word.length
  puts "Player 2, please guess a letter..."
    letter_guess = gets.chomp
    if guessed_letters.include? letter_guess
        puts "repeated, enter a new one."
        letter_guess = gets.chomp
    end
    guessed_letters << letter_guess
  game.guess_the_letter(letter_guess)
  game.game_won?
  attempts += 1 
end