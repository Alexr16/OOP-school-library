require 'json'

class Store
  def store_books(obj)
    File.write('./Data/books.json', obj)
  end

  def store_people(obj)
    File.write('./Data/people.json', obj)
  end
end

# json = JSON.generate(obj)
# puts 'Compact:', json
# opts = {
#   array_nl: "\n",
#   object_nl: "\n",
#   indent: '  ',
#   space_before: ' ',
#   space: ' '
# }
# File.write("./test.json", json)
# file = File.open("./test.json")

# puts file_data
