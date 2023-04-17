module Towable
  def can_tow(pounds)
    pounds < 2000
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :model, :year

  @@number_of_vehicles = 0

  def self.number_of_vehicles
    p "This program has created #{@@number_of_vehicles} vehicles."
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @@number_of_vehicles += 1
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

  def age
    "Your #{model} is #{vehicle_age} years old."
  end

  private

  def vehicle_age
    Time.new.year - year
  end
end

class MyCar < Vehicle
  CAR_TYPE = 'sedan'

  def to_s
    "The car is a #{color} #{model} made in #{year}."
  end
end

class MyTruck < Vehicle
  include Towable
  CAR_TYPE = 'Truck'

  def to_s
    "The truck is a #{color} #{model} made in #{year}."
  end
end

jacobcar = Vehicle.new(2012, 'Subaru Legacy', 'gray')
puts jacobcar.age
