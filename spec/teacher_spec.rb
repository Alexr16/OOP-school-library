require_relative 'spec_helper'

describe Teacher do
  context 'When testing the Teacher class' do
    before :each do
      @name = 'Augusto'
      @age = 23
      @especialization = 'Swift'
      @augusto = Teacher.new(@age, @especialization, @name, parent_permission: @parent_permission)
    end
    it 'Checks to see if a variable is assigned to an instance of the Teacher class' do
      @augusto.should be_an_instance_of Teacher
    end
    it 'Checks to see if a variable is assigned to an instance of the Person class' do
      @augusto.should be_kind_of Person
    end

    it 'Checks to see if the Teacher instance is properly assigned the name of Augusto' do
      actual = 'Augusto'
      expect(@augusto.name).to eq actual
    end

    it 'Checks to see if the person object returns its correct name using the correct_name method' do
      actual = 'Augusto'
      expect(@augusto.correct_name).to eq actual
    end

    it 'Checks to see if the Teacher creates a proper hash representation of itself for later use of storing' do
      actual = { name: 'Augusto', age: 23, id: @augusto.id, especialization: 'Swift' }
      expect(@augusto.teacher_to_json).to eq actual
    end
  end
end
