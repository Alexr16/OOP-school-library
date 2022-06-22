require_relative 'person'

class RentalsDisplayer
  def list_all_rentals_by_id(people, rentals)
    print 'ID of person: '
    id = gets.chomp
    puts 'Rentals: '
    person = people.find { |element| JSON.parse(element)['id'] == id }
    if person.nil?
      puts 'No person found with this ID'
    else
      puts(rentals.map do |rental|
             "Date: #{JSON.parse(rental)['date']},Book: #{
              JSON.parse(rental)['book']['title']}, Author: #{JSON.parse(rental)['book']['author']}"
           end)
    end
  end
end
