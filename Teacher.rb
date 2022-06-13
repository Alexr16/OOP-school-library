require_relative './Person.rb'

class Teacher < Person
    def initialize(name = "Unknown", age, especialization)
        super(name, age, parent_permission)
        @especialization = especialization
    end

    def can_use_services?
        true
    end
end

teacher_1 = Teacher.new(48, "Math")
puts teacher_1.can_use_services?