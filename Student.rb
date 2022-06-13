require_relative './Person.rb'

class Student < Person
    def initialize(name = "Unknown", age, clasroom)
        super(name, age, parent_permission)
        @classroom = classroom
    end

    def play_hooky
        "¯\(ツ)/¯"
    end
end

student_1 = Student.new("Juan", 20, "1A")
student_1.play_hooky