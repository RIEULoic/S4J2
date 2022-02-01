class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    puts "#{@name} a #{life_points} points de vie"
  end

  def gets_damage(damage, player)
    @life_points -= damage
      if
        @life_points <= 0
        puts "Le joueur #{player.name} a été tué !"
      else
        puts "#{player.name} a #{@life_points} points de vie."
      end 
  end

  def attacks(player)
    puts "Le joueur #{@name} attaque le joueur #{player.name}."
    damage = compute_damage
    puts "#{@name} lui inflige #{damage} points de dommage."
    gets_damage(damage, player)
  end

  def compute_damage
    return rand(1..6)
  end
end



class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name)
    @weapon_level = 1
    @life_points = 100
    super(name)      #(life_points)??
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}."
  end

  def compute_damage
      rand(1..6) * @weapon_level
  end
  
end
