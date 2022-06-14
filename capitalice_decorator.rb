require_relative 'Decorator'

class Capitalize_Decorator < Decorator
  def correct_name
    @nameable.correct_name.upcase
  end
end