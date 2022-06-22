require_relative 'spec_helper'

describe Person do
  context 'When testing the Person class' do
    before :each do
      @name = 'Jorge'
      @age = 21
      @parent_permission = false
      @jorge = Person.new(@age, @name, parent_permission: @parent_permission)
    end
    it 'Checks to see if a variable is assigned to an instance of the Person class' do
      @jorge.should be_an_instance_of Person
    end

    it 'Checks to see if the Person instance is properly assigned the name of Jorge' do
      actual = 'Jorge'
      expect(@jorge.name).to eq actual
    end

    it 'Checks to see if the person object returns its correct name using the correct_name method' do
      actual = 'Jorge'
      expect(@jorge.correct_name).to eq actual
    end

    it "The add_rental method returns a rental and adds its to the book" do
      name = 'Aaron'
      age = 21
      parent_permission = false
      aaron = Student.new(age, name, parent_permission: parent_permission)
      title = 'Game of Thrones'
      author = 'George R.R. Martin'
      book = Book.new(title, author)
      date = '2022/12/12'
      rental = aaron.add_rental(date, book)
      expect(aaron.rentals).to eql [rental]
    end
  end
  
  context "When checking permissions" do
    
    it "The can_use_services? method returns false if under age and no parent permission" do
      person = Person.new(14, "Julius", parent_permission: false)
      expect(person.can_use_services?).to be false
    end
    
    it "The can_use_services? method returns true if over age" do
      person = Person.new(19, "Mihndim", parent_permission: false)
      expect(person.can_use_services?).to be true
    end
    
    it "The can_use_services? method returns true if has parent permission" do
      person = Person.new(14, "Rose", parent_permission: true)
      expect(person.can_use_services?).to be true
    end
  end
end
