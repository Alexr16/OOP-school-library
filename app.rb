require_relative 'student'
require_relative 'book'
require_relative 'teacher'
require_relative 'rental'
require_relative 'person_generator'
require_relative 'book_generator'
require_relative 'rental_generator'
require_relative 'rentals_displayer'

class App
  attr_accessor :people, :books

  def initialize
    @people = []
    @books = []
  end

  def list_all_books
    puts(@books.map { |book| "Title: #{book.title}. Author: #{book.author}" })
  end

  def list_all_people
    puts(@people.map { |person| "[#{person.class}] Name: #{person.name}, ID: #{person.id},  Age: #{person.age}" })
  end

  def create_person
    person = PersonGenerator.new
    @people.push(person.create_person)
  end

  def create_book
    book_generator = BookGenerator.new
    @books << book_generator.create_book
  end

  def create_rental
    rental_generator = RentalGenerator.new
    rental_generator.create_rental(@books, @people)
  end

  def list_all_rentals_by_id()
    rentals_displayer = RentalsDisplayer.new
    rentals_displayer.list_all_rentals_by_id(@people)
  end

  def exit
    puts 'Thank for using this app!'
    abort
  end
end
