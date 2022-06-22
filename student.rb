require_relative 'person'
require_relative 'classroom'

class Student < Person
  def initialize(age, name = 'Unknow', classroom = nil, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def student_to_json
    { name: @name, age: @age, id: @id, parent_permission: @parent_permission }
  end
end
