require_relative 'person'

class Teacher < Person
  def initialize(age, especialization, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @especialization = especialization
  end

  def can_use_services?
    true
  end
end
