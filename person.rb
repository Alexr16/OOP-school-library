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
    rental = Rental.new(date, book, self)
    @rentals.push(rental)
    rental
  end

  def can_use_services?
    return true if of_age? or @parent_permission

    false
  end

  private

  def of_age?
    @age >= 18
  end
end
