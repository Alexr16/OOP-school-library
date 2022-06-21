require 'JSON'

class Store
    def load_data
        file_data = File.read("./test.json")
    end

    def store_books(obj)
        File.write('./Data/books.json', obj, mode: "a")
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