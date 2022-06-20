require_relative 'app'

class Menu
  def initialize
    @app = App.new
  end

  def process_selection(selection) # rubocop:disable Metrics/CyclomaticComplexity
    case selection
    when '1'
      @app.list_all_books
    when '2'
      @app.list_all_people
    when '3'
      @app.create_person
    when '4'
      @app.create_book
    when '5'
      @app.create_rental
    when '6'
      @app.list_all_rentals_by_id
    when '7' then @app.exit
    else
      puts 'Invalid selection'
    end
  end
end
