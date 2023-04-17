class MyCar
  attr_accessor :color, :year, :model

  @@gas_mileage = 0

  def initialize(year, model, color)
    self.year = year
    self.model = model
    self.color = color
    @current_speed = 0
  end

  def to_s
    "The car is a #{color} #{model} made in #{year}."
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def speed_up(speed_increase)
    @current_speed += speed_increase
    inf = Float::INFINITY
    response = case speed_increase
               when 0..5
                 "You accelerate cautiously by #{speed_increase} mph"
               when 5..10
                 "You push the gas and accelerate by #{speed_increase} mph"
               when 11..inf
                 "You gun it! You fly away, increasing your speed by #{speed_increase} mph!"
               end
    puts response
  end

  def brake(speed_decrease)
    @current_speed -= speed_decrease
    puts "You push the brake and slow down by #{speed_decrease} mph"
  end

  def current_speed
    puts "Your current speed is #{@current_speed} mph"
  end

  def shut_off
    @current_speed = 0
    puts 'Lets put this thing away for a minute'
  end

  def spray_paint(color)
    self.color = color
    puts "You paint your car #{color}, isn't that nice and shiny now??"
  end
end

subaru = MyCar.new('2052', 'Subaru Legacy', 'gray')
# subaru.speed_up(4)
# subaru.current_speed
# subaru.speed_up(9)
# subaru.current_speed
# subaru.speed_up(30)
# subaru.current_speed
# subaru.brake(10)
# subaru.current_speed
# subaru.shut_off
# subaru.current_speed
# subaru.spray_paint("Silver")
puts MyCar.calculate_mileage(500, 13)
puts subaru
