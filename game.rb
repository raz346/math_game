require_relative 'player'
require_relative 'question'

P1 = Player.new('Player1')
P2 = Player.new('Player2')

puts "########################################"
puts "--       Let the GAME begins          --"
puts "########################################"


def turn(current_player)

  puts "#{current_player.name}: What does #{Question.number1} plus #{Question.number2} equal?"

  answer_guess = gets.chomp

  if Question.validation(answer_guess)
    puts "CORRECT!!!!!"
  else
    puts "WROOOONG!"
    current_player.wrong
  end

  puts "#{P1.name}: #{P1.points}/3 vs #{P2.name}: #{P2.points}/3"

end


loop do
  turn(P1)
  break puts "Player 2 wins with #{P2.points}/3 points" if (P1.gameover)
  turn(P2)
  break puts "Player 1 wins with #{P1.points}/3 points" if (P2.gameover)
  puts "#######################################"
end


puts  " YOU LOSE.. BOOOOOO..... "