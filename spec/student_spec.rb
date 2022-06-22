require_relative 'spec_helper'

describe Student do
  context 'When testing the Student class' do
    before :each do
      @name = 'Aaron'
      @age = 21
      @parent_permission = false
      @aaron = Student.new(@age, @name, parent_permission: @parent_permission)
    end
    it 'Checks to see if a variable is assigned to an instance of the Student class' do
      @aaron.should be_an_instance_of Student
    end
    it 'Checks to see if a variable is assigned to an instance of the Person class' do
      @aaron.should be_kind_of Person
    end

    it 'Checks to see if the Student instance is properly assigned the name of Aaron' do
      actual = 'Aaron'
      expect(@aaron.name).to eq actual
    end

    it 'Checks to see if the person object returns its correct name using the correct_name method' do
      actual = 'Aaron'
      expect(@aaron.correct_name).to eq actual
    end

    it 'Checks to see if the Student creates a proper hash representation of itself for later use of storing' do
      actual = { name: 'Aaron', age: 21, id: @aaron.id, parent_permission: @parent_permission }
      expect(@aaron.student_to_json).to eq actual
    end
  end
end
