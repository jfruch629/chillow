require_relative "dwelling"
require_relative "occupant"

class Apartment < Dwelling
  attr_accessor :rent, :lease_start_date, :lease_end_date, :occupants

  def full?
    full = true
    if @occupants.any?(nil)
      full = false
    end
    full
  end

  def add_roommate(first_name, last_name)
    @occupants << Occupant.new(first_name, last_name)
  end


  def remove_roommate(first_name, last_name)
    @occupants.each_with_index do |occupant, occupant_index|
      if occupant_index == index
        @boxes.delete_at(box_index)
      end
    end
  end
end
