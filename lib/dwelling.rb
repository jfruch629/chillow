require_relative "occupant"

class Dwelling
  attr_accessor :address, :city_or_town, :state, :zip_code, :occupants

  def initialize(address, city_or_town, state, zip_code, occupants = [])
    @address = address
    @city_or_town = city_or_town
    @state = state
    @zip_code = zip_code
    @occupants = occupants
  end
end
