require_relative 'decorator'

class Trimmer_Decorator < Decorator
  def correct_name
    @nameable.correct_name.length.strip if >= 10
  end
end