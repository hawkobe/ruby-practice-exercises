class GoodDog
  attr_accessor :name, :height, :weight, :age

  DOG_YEARS = 7
  @@number_of_dogs = 0
  @@dogs = {}

  def initialize(n, h, w, a)
    self.name = n
    self.height = h
    self.weight = w
    self.age = a
    @@number_of_dogs += 1
    @@dogs[n] = { name: n, height: h, weight: w, age: a }
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w, a)
    @@dogs.delete(name)
    @@dogs[n] = { name: n, height: h, weight: w, age: a }
    self.name = n
    self.height = h
    self.weight = w
    self.age = a * 7
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def self.get_dogs
    @@dogs
  end

  def public_disclosure
    "#{name} in human years is #{human_years}"
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

# puts GoodDog.total_number_of_dogs

sparky = GoodDog.new('Sparky', '12 inches', '10 pounds', 3)
# puts sparky.info

# sparky.change_info("Spartacus", "24 inches", "45 pounds", 3)
# puts sparky.info

bulleit = GoodDog.new('Bulleit', '22 inches', '80 pounds', 9)
# puts bulleit.info

# bulleit.change_info("Bulleit", "25 inches", "75 pounds", 9.5)

# puts GoodDog.total_number_of_dogs

# puts GoodDog.get_dogs

# puts bulleit.age

puts bulleit.public_disclosure
