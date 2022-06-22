require_relative 'spec_helper'

describe Classroom do
  context 'When testing the Classroom class' do
    before :each do
      @label = '1A'
      @classroom = Classroom.new(@label)
    end
    it 'Checks to see if a variable is assigned to an instance of the Classroom class' do
      @classroom.should be_an_instance_of Classroom
    end

    it 'Checks to see if the Classroom instance is properly assigned label of 1A' do
      actual = '1A'
      expect(@classroom.label).to eq actual
    end

    it 'Checks to see if the Classroom store an instance of the Student class by using add_student method' do
      name = 'Aaron'
      age = 21
      parent_permission = false
      aaron = Student.new(age, name, parent_permission: parent_permission)
      @classroom.add_student(aaron)
      expect(@classroom.students[0]).to eq aaron
    end
  end
end
