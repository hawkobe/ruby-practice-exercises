module Towable
  def can_tow?(pounds)
    pounds < 2000
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year, :model

  @@vehicles = 0
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
    @@vehicles += 1
  end

  def self.count_vehicles
    puts "This program has created #{@@vehicles} vehicles"
  end

  def self.calculate_mileage(miles_driven, gallons_used)
    puts "Your vehicle's current gas mileage is #{miles_driven / gallons_used} mpg."
  end

  def speed_up(speed)
    @current_speed += speed
    puts "You hit the gas, speeding up by #{speed} mph, you're now going #{@current_speed}!"
  end

  def slow_down(speed)
    @current_speed -= speed
    puts "You hit the brakes, slowing down by #{speed} mph, you've slowed to #{@current_speed}."
  end

  def current_speed
    puts "Your current groundspeed is #{@current_speed} mph."
  end

  def turn_off
    @current_speed = 0
    puts 'You park the car and shut the car off. Fun joyride!'
  end

  def spray_paint(new_color)
    self.color = new_color
    puts "Looks like you've got some heat from all that speeding, you hit the garage to change your car color to #{color}"
  end

  def to_s
    "You're the proud owner of a #{year} #{color} #{model}."
  end

  def age
    puts "The age of your vehicle is #{calculate_age} years old."
  end

  private

  def calculate_age
    Time.now.year - year.to_i
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
  include Towable
end

jimny = MyCar.new('2020', 'Black', 'Suzuki Jimny')
jimny.age
puts 'Vehicle Ancestors:'
puts Vehicle.ancestors
puts 'MyCar Ancestors:'
puts MyCar.ancestors
puts 'MyTruck Ancestors:'
puts MyTruck.ancestors

# class Student
#   def initialize(name, grade)
#     @name = name
#     @grade = grade
#   end

#   def better_grade_than?(other_student)
#     grade > other_student.grade
#   end

#   protected

#   attr_reader :grade
# end

# jacob = Student.new("Jacob", 97)
# bulleit = Student.new("Bulleit", 80)

# puts "Well done!" if jacob.better_grade_than?(bulleit)
