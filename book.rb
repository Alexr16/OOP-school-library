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
    Rental.new(date, self, person).rental_to_json
  end

  def book_to_json
    { title: @title, author: @author }.to_json
  end
end
