require "occupant"
class Box
  attr_accessor :occupant

  def initialize(first_name, last_name)
    @occupant = Occupant.new(first_name, last_name)
  end

  def name
    "#{occupant.first_name} #{occupant.last_name}"
  end
end
