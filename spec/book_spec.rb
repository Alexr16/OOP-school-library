require_relative 'spec_helper'

describe Book do
  context 'When testing the Book class' do
    before :each do
      @title = 'Game of Thrones'
      @author = 'George R.R. Martin'
      @book = Book.new(@title, @author)
    end
    it 'Checks to see if a variable is assigned to an instance of the Book class' do
      @book.should be_an_instance_of Book
    end

    it 'Checks to see if the Book instance is properly assigned Title of Game of Thrones' do
      actual = 'Game of Thrones'
      expect(@book.title).to eq actual
    end

    it 'Checks to see if the Book creates a proper hash representation of itself for later use of storing' do
      actual = { title: 'Game of Thrones', author: 'George R.R. Martin' }
      expect(@book.book_to_json).to eq actual
    end

    it 'The add_rental method returns a rental and adds its to the book' do
      name = 'Aaron'
      age = 21
      parent_permission = false
      aaron = Student.new(age, name, parent_permission: parent_permission)
      title = 'Game of Thrones'
      author = 'George R.R. Martin'
      book = Book.new(title, author)
      date = '2022/12/12'
      rental = book.add_rental(date, aaron)
      expect(book.rentals).to eql [rental]
    end
  end
end
