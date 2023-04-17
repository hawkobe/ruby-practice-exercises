class Person
  MAX_HEALTH = 120
  def initialize(name, health, age, strength)
    @name = name
    @age = age
    @health = health
    @strength = strength
  end

  def heal
    self.health += 1 unless health + 1 > MAX_HEALTH
  end
end

class Viking < Person
  attr_reader :dead, :name

  # @@starting_health = 100
  def initialize(name, health, age, strength, weapon)
    super(name, health, age, strength)
    @weapon = weapon
    @dead = false
  end

  def self.create_warrior(name)
    age = (rand * 20 + 15).to_i
    health = [age * 5, 120].min
    strength = [age / 2, 10].min
    weapon = %w[axe sword club pitchfork].sample
    Viking.new(name, health, age, strength, weapon)
  end

  def self.random_name
    %w[Jacob Crystal Bulleit Moira].sample
  end

  def self.silver_to_gold(silver_pieces)
    silver_pieces / 10
  end

  def self.gold_to_silver(gold_pieces)
    gold_pieces * 10
  end

  def heal
    @health = [@health + 2, MAX_HEALTH].min
    # OR 2.times { super }
    puts 'Ready for battle!'
  end

  def attack(recipient)
    if recipient.dead
      puts "#{recipient.name} is already dead!"
      return false
    end
    case @weapon
    when 'sword'
      damage = (rand * 10 + 10).round(0)
      damage_type = 'slashing'
    when 'axe'
      damage = (rand * 10 + 10).round(0)
      damage_type = 'slashing'
    when 'club'
      damage = (rand * 7 + 10).round(0)
      damage_type = 'bludgeoning'
    when 'pitchfork'
      damage = (rand * 5 + 10).round(0)
      damage_type = 'peircing'
    end
    recipient.take_damage(damage, damage_type, @name)
  end

  def shout(str)
    print str
  end

  protected

  def take_damage(damage, damage_type, attacker)
    @health -= damage
    puts "#{shout('Ouch!')} #{@name} took #{damage} #{damage_type} damage from #{attacker} and has #{@health} health left"
    die if @health <= 0
  end

  private

  # attr_writer :dead
  def die
    puts "#{@name} has been killed :("
    @dead = true
  end
end

# p oleg = Viking.new("Oleg", 19, 100, 8)

# puts oleg.health
# oleg.take_damage(20)
# puts oleg.health

# p sten = Viking.create_warrior("Sten")

warrior1 = Viking.create_warrior(Viking.random_name)

oleg = Viking.create_warrior('Oleg')
# p oleg
# oleg.take_damage(200)

# 10.times { warrior1.attack(oleg) }
warrior1.attack(oleg) until oleg.dead == true

p warrior1
p oleg
