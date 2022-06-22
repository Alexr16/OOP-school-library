class RentalGenerator
  def create_rental(books, people)
    puts 'Select a book from the following list by number'
    books.each_with_index do |book, index|
      puts "[#{index}] Title: #{book[:title]}. Author: #{book[:author]}"
    end
    book_number = gets.chomp.to_i
    puts 'Select a student from the following list by number'
    people.each_with_index do |person, index|
      puts "[#{index}] [#{person.class}] Name: #{person[:name]}.
      ID: #{person[:id]}. Age: #{person[:age]}"
    end
    student_number = gets.chomp.to_i
    print 'Date: '
    date = gets.chomp.to_s
    puts 'Rental created successfully!'

    Rental.new(date, books[book_number], people[student_number]).rental_to_json
  end
end
