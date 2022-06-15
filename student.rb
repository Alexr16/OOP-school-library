require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(age, name = 'Unknow', classroom = nil, parent_permission = true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end

class_1_a = Classroom.new('1A')

Student_1 = Student.new(18, 'John')
# Student_2 = Student.new(16, '1A', 'Jose')

# puts class_1_a.students

# puts Student_1.classroom
class_1_a.add_student(Student_1)
# class_1_a.add_student(Student_2)
# puts Student_1.classroom
# Student_1.classroom.name
print class_1_a.students.map { |student| student.classroom.label }
