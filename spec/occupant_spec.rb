require 'spec_helper'

describe Occupant do
  describe ".new" do
    occupant = Occupant.new("Jake", "Fruci")
    it 'Creates a new Occupant object with a first_name and last_name' do
      expect(occupant.first_name).to eq("Jake")
      expect(occupant.last_name).to eq("Fruci")
    end
   end
 end
