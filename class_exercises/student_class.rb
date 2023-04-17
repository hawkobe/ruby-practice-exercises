class Student
  attr_reader :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  attr_reader :grade
end

jacob = Student.new('Jacob', 85)
bulleit = Student.new('Bulleit', 100)

puts 'Well done!' if bulleit.better_grade_than?(jacob)
