require_relative 'student'
require_relative 'book'
require_relative 'teacher'
require_relative 'rental'

class App
  attr_accessor :people, :books

  def initialize
    @people = []
    @books = []
  end

  def list_all_books
    puts(@books.map { |book| "Title: #{book.title}. Author: #{book.author}" })
  end

  
end
