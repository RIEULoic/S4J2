require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "Bonsoir, amis fan de castagne."
puts "Aujourd'hui, deux challengers hors-norme:"
puts "-----------------------------------------"
puts "à ma droite 'Josiane'"
player1 = Player.new("Josiane")
puts "et à ma gauche 'José'"
player2 = Player.new("José")
puts "-----------------------------------------"
puts "READYYYYY to rumble!!!"
puts "----------------------"
  while player1.life_points > 0 && player2.life_points > 0
    puts "Voici l'état de chaque joueur:"
    puts ""
    puts player1.show_state
    puts player2.show_state
    puts "---------------"
    puts "phase d'attaque"
    puts "---------------"
    puts ""
    player1.attacks(player2)
      if player2.life_points <= 0
        break
      end
    player2.attacks(player1)
  end
  puts"-----------------------------------------"
  puts "GAME OVER"
