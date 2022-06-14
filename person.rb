require_relative 'nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    super()
  end

  def correct_name
    @name
  end
  
  private

  def of_age?
    @age >= 18
  end

  def can_use_services?
    return true if is_of_age? or @parent_permission
  end
end
