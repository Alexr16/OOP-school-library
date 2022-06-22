require_relative 'student'
require_relative 'book'
require_relative 'teacher'
require_relative 'rental'
require_relative 'person_generator'
require_relative 'book_generator'
require_relative 'rental_generator'
require_relative 'rentals_displayer'
require_relative 'store'
require 'json'

class App
  attr_accessor :people, :books, :rentals

  def initialize
    @people = []
    @books = []
    @rentals = []
    @store = Store.new

    load_books
    load_people
    load_rentals
  end

  def list_all_books
    puts(@books.map { |book| puts "Title: #{book[:title]}. Author: #{book[:author]}" })
  end

  def list_all_people
    puts(@people.map do |person|
           puts "Name: #{person[:name]}.
           ID: #{person[:id]}. Age: #{person[:age]}"
         end)
  end

  def create_person
    person = PersonGenerator.new
    @people.push(person.create_person)
  end

  def create_book
    book_generator = BookGenerator.new
    book = book_generator.create_book
    @books << book.book_to_json
  end

  def create_rental
    rental_generator = RentalGenerator.new
    rental = rental_generator.create_rental(@books, @people)
    @rentals << rental
  end

  def list_all_rentals_by_id()
    rentals_displayer = RentalsDisplayer.new
    rentals_displayer.list_all_rentals_by_id(@people, @rentals)
  end

  def exit
    puts 'Thank for using this app!'
    @store.store_books(@books.to_json)
    @store.store_people(@people.to_json)
    @store.store_rentals(@rentals.to_json)
    abort
  end

  private

  def load_people
    file = File.open('./Data/people.json')
    file_data = file.read
    if file_data == ''
      @people = []
    else
      convert_to_array = JSON.parse(file_data, symbolize_names: true)
      @people = convert_to_array
    end
  end

  def load_books
    file = File.open('./Data/books.json')
    file_data = file.read
    if file_data == ''
      @books = []
    else
      convert_to_array = JSON.parse(file_data, symbolize_names: true)
      @books = convert_to_array
    end
  end

  def load_rentals
    file = File.open('./Data/rentals.json')
    file_data = file.read
    if file_data == ''
      @rentals = []
    else
      convert_to_array = JSON.parse(file_data, symbolize_names: true)
      @rentals = convert_to_array
    end
  end
end
