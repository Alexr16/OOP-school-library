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

  def list_all_people
    puts(@people.map { |person| "[#{person.class}] Name: #{person.name}, ID: #{person.id},  Age: #{person.age}" })
  end

  def create_person # rubocop:disable Metrics/MethodLength
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]:'
    option = gets.chomp
    case option
    when '1'
      print 'age: '
      age = gets.chomp.to_i
      print 'name: '
      name = gets.chomp.to_s
      print 'Has parent permission? [y/n]: '
      parent_permission = gets.chomp.to_s == 'y'
      student = Student.new(age, name, parent_permission: parent_permission)
      @people.push(student)
      puts 'Person created successfully!'
    when '2'
      print 'age: '
      age = gets.chomp.to_i
      print 'name: '
      name = gets.chomp.to_s
      print 'Specialization: '
      specialization = gets.chomp.to_s
      teacher = Teacher.new(age, specialization, name, parent_permission: true)
      @people.push(teacher)
      puts 'Person created successfully!'
    else
      puts 'Invalid selection'
      create_person
    end
  end

  def create_book
    print 'Title: '
    title = gets.chomp.to_s
    print 'Author: '
    author = gets.chomp.to_s
    book = Book.new(title, author)
    @books.push(book)
    puts 'Book created successfully!'
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index do |book, index|
      puts "[#{index}] Title: #{book.title}. Author: #{book.author}"
    end
    book_number = gets.chomp.to_i
    puts 'Select a student from the following list by number'
    @people.each_with_index do |person, index|
      puts "[#{index}] [#{person.class}] Name: #{person.name}, ID: #{person.id},  Age: #{person.age}"
    end
    student_number = gets.chomp.to_i
    print 'Date: '
    date = gets.chomp.to_s
    Rental.new(date, @books[book_number], @people[student_number])
    puts 'Rental created successfully!'
  end

  def list_all_rentals_by_id
    print 'ID of person: '
    id = gets.chomp
    puts 'Rentals: '
    person = @people.find { |element| element.id == id }
    if person.nil?
      puts 'No person found with this ID'
    else
      puts(person.rentals.map do |rental|
             "Date: #{rental.date}, Book: #{rental.book.title}, Author: #{rental.book.author}"
           end)
    end
  end

  def exit
    puts 'Thank for using this app!'
    abort
  end
end
