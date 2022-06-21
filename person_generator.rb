require_relative 'teacher'
require_relative 'student'

class PersonGenerator
  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    begin
      option = gets.chomp
    rescue StandardError
      puts 'Invalid selection'
      create_person
    else
      case option
      when '1' then create_student

      when '2' then create_teacher
      end
    end
  end

  private

  def create_student
    print 'age: '
    age = gets.chomp.to_i
    print 'name: '
    name = gets.chomp.to_s
    print 'Has parent permission? [y/n]: '
    parent_permission = gets.chomp.to_s == 'y'
    puts 'Person created successfully!'
    Student.new(age, name, parent_permission: parent_permission).student_to_json
  end

  def create_teacher
    print 'age: '
    age = gets.chomp.to_i
    print 'name: '
    name = gets.chomp.to_s
    print 'Specialization: '
    specialization = gets.chomp.to_s
    puts 'Person created successfully!'
    Teacher.new(age, specialization, name, parent_permission: true).teacher_to_json
  end
end
