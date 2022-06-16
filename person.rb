require 'securerandom'
require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'
require_relative 'rental'
require_relative 'book'

class Person < Nameable
  attr_accessor :name, :age, :rentals, :parent_permission
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = SecureRandom.uuid
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  private

  def of_age?
    @age >= 18
  end

  def can_use_services?
    return true if is_of_age? or @parent_permission
  end
end

# juan = Person.new(18, 'Juan')
# alex = Person.new(16, 'Alex')

# book_1 = Book.new('Harry Potter', 'J.K. Rowling')
# book_2 = Book.new('The Lord of the Rings', 'J.R.R. Tolkien')

# rent_1 = juan.add_rental('01/01/2020', book_1)
# # rent_1 = Rental.new('01/01/2020', book_1, juan)
# # rent_2 = Rental.new('01/01/2020', book_1, alex)
# # rent_3 = Rental.new('01/01/2020', book_2, juan)

# p book_1.rentals.map { |rental| rental.person.name }
# p juan.rentals.map { |rental| rental.book.title }
# # List all books
# # List all rentals
# p book.rentals.map { |rental| rental.book.title }
