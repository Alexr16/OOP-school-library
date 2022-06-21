require_relative 'app'
require_relative 'menu'
require_relative 'store'

class Main
  def initialize
    @menu = Menu.new
  end

  def interface
    selection = nil
    until selection == '7'
      puts "Welcome to School Library App!\n\n"
      puts 'Please choose an option by entering a number:'
      puts '1 - List all books'
      puts '2 - List all people'
      puts '3 - Create a person'
      puts '4 - Create a book'
      puts '5 - Create a rental'
      puts '6 - List all rentals for a given person id'
      puts '7 - Exit'
      selection = gets.chomp.to_s
      @menu.process_selection(selection)
    end
    # store = Store.new.store_data()
  end
end

Main.new.interface
