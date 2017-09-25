require 'spec_helper'

describe Truck do
  describe ".new" do
    truck = Truck.new(10)
    it "Creates a new Truck Object with a box carrying capacity" do

      expect(truck.box_capacity).to eq(10)
    end
  end

  describe "#full?" do
    large_truck = Truck.new(10)
    small_truck = Truck.new(2)
    it "Returns false if the truck can fit more boxes." do
      large_truck.add_box("Jake","Fruci")

      expect(large_truck.full?).to eq(false)
    end

    it "Returns true if the truck can't fit anymore boxes" do
      small_truck.add_box("Jake","Fruci")
      small_truck.add_box("John","Smith")

      expect(small_truck.full?).to eq(true)
    end
  end

  describe "#add_box" do
    truck = Truck.new(10)
    it "Adds a new box to the truck as long as it is not full" do

      truck.add_box("Jake","Fruci")
      truck.add_box("John","Smith")
      expect(truck.boxes.count).to eq(2)
      expect(truck.boxes[0].name).to eq("Jake Fruci")
      expect(truck.full?).to eq(false)
    end


  end

  describe "#remove_box" do
    truck = Truck.new(10)
    it "Removes an occupied box space by removing the owner, resembling a newly opened box space in the array." do
      truck.add_box("Jake","Fruci")
      expect(truck.boxes[0].name).to eq("Jake Fruci")
      truck.remove_box(0)
    end
  end

  describe "#unlaod_all_boxes" do
    truck = Truck.new(3)
    it "Removes all of the boxes in the truck owned by the specified owner." do
      truck.add_box("Jake","Fruci")
      truck.add_box("Jake","Fruci")
      truck.add_box("John","Smith")
      expect(truck.boxes.count).to eq(3)

      truck.unload_all_boxes("Jake","Fruci")
      expect(truck.boxes.count).to eq(1)
    end
  end
end
