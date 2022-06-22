class RentalGenerator
  def create_rental(books, people)
    puts 'Select a book from the following list by number'
    books.each_with_index do |book, index|
      puts "[#{index}] Title: #{JSON.parse(book)['title']}. Author: #{JSON.parse(book)['author']}"
    end
    book_number = gets.chomp.to_i
    puts 'Select a student from the following list by number'
    people.each_with_index do |person, index|
      puts "[#{index}] [#{person.class}] Name: #{JSON.parse(person)['name']}.
      ID: #{JSON.parse(person)['id']}. Age: #{JSON.parse(person)['age']}"
    end
    student_number = gets.chomp.to_i
    print 'Date: '
    date = gets.chomp.to_s
    puts 'Rental created successfully!'

    Rental.new(date, JSON.parse(books[book_number]), JSON.parse(people[student_number]))
  end
end
