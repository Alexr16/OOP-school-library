require_relative 'book'

class BookGenerator
  def create_book
    print 'Title: '
    title = gets.chomp.to_s
    print 'Author: '
    author = gets.chomp.to_s
    puts 'Book created successfully!'
    Book.new(title, author)
  end
end
