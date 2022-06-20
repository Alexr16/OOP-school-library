require_relative 'person'

class RentalsDisplayer
  def list_all_rentals_by_id(people)
    print 'ID of person: '
    id = gets.chomp
    puts 'Rentals: '
    person = people.find { |element| element.id == id }
    if person.nil?
      puts 'No person found with this ID'
    else
      puts(person.rentals.map do |rental|
             "Date: #{rental.date}, Book: #{rental.book.title}, Author: #{rental.book.author}"
           end)
    end
  end
end
