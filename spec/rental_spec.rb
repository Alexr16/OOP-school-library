require_relative 'spec_helper'

describe Rental do
  context 'When testing the Rental class' do
    before :each do
      @name = 'Aaron'
      @age = 21
      @parent_permission = false
      @aaron = Student.new(@age, @name, parent_permission: @parent_permission)
      @title = 'Game of Thrones'
      @author = 'George R.R. Martin'
      @book = Book.new(@title, @author)
      @date = '2022/12/12'
      @rental = Rental.new(@date, @book, @aaron)
    end
    it 'Checks to see if a variable is assigned to an instance of the Rental class' do
      @rental.should be_an_instance_of Rental
    end

    it 'Checks to see if the Rental instance is properly assigned the name of Aaron' do
      actual = 'Aaron'
      expect(@rental.person.name).to eq actual
    end

    it 'Checks to see if the rental creates a proper hash representation of itself for later use of storing' do
      actual = { date: '2022/12/12', book: @book, person: @aaron }
      expect(@rental.rental_to_json).to eq actual
    end
  end
end
