require 'json'

class Store
  def store_books(obj)
    File.write('./Data/books.json', obj)
  end

  def store_people(obj)
    File.write('./Data/people.json', obj)
  end

  def store_rentals(obj)
    File.write('./Data/rentals.json', obj)
  end
end
