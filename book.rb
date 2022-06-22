require_relative 'rental'
require 'json'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    rental = Rental.new(date, self, person).rental_to_json
    @rentals.push(rental)
    rental
  end

  def book_to_json
    { title: @title, author: @author }
  end
end
