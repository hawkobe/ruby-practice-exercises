class Person
  MAX_HEALTH = 120

  def heal
    self.health += 1 unless health + 1 > MAX_HEALTH
  end
end

class Viking < Person
  @@starting_health
  attr_accessor :name, :age, :health, :strength
  attr_reader :dead

  def self.create_warrior(name)
    age = rand * 20 + 15
    health = [age * 5, 120].min
    strength = [age / 2, 10].min
    Viking.new(name, age, strength, health)
  end

  def self.random_name
    %w[Erik Lars Leif].sample
  end

  def initialize(name, age, strength, health)
    @name = name
    @age = age
    @strength = strength
    @health = health
  end

  def heal
    self.health = [self.health + 2, MAX_HEALTH].min
    puts 'Ready for battle!'
  end

  # or could put def heal
  # 2.times { super }
  # puts "Ready for battle!"
  # end

  def attack(recipient)
    if recipient.dead
      puts "#{recipient.name} is already dead! Stop hittin a guy while he's down!"
      return false
    end
    damage = (rand * 10 + 10).round(0)
    recipient.take_damage(damage)
  end

  def shout(str)
    puts str
  end

  def sleep
    self.health += 1 unless health >= 100
  end

  def is_dead?
    puts dead
  end

  protected

  def take_damage(damage)
    @health -= damage
    puts "Ouch! #{name} has taken #{damage} points of damage and has #{self.health} health left"
    die if @health <= 0
  end

  private

  attr_writer :dead

  def die
    puts "#{name} has been killed :("
    self.dead = true
  end
end

zven = Viking.create_warrior('zven')

erik = Viking.create_warrior('Erik')

10.times { zven.attack(erik) }
