require 'spec_helper'

describe Apartment do
  describe ".new" do
    apartment = Apartment.new("5 Apple Road", "Boston", "Massachusetts", "02110")
    it 'Creates a new Apartment object with general location attributes, what is not set is automatically nil' do

      expect(apartment.address).to eq("5 Apple Road")
      expect(apartment.city_or_town).to eq("Boston")
      expect(apartment.state).to eq("Massachusetts")
      expect(apartment.zip_code).to eq("02110")
      expect(apartment.rent).to eq(nil)
      expect(apartment.lease_start_date).to eq(nil)
      expect(apartment.lease_end_date).to eq(nil)
      expect(apartment.occupants).to eq([])
    end
  end

  describe "#rent, #lease_start_date, #lease_end_date" do
    apartment = Apartment.new("5 Apple Road", "Boston", "Massachusetts", "02110")
    it 'After creating a new apartment, you may set the #rent, #lease_start_date, and #lease_end_date' do

    apartment.rent = 1000
    apartment.lease_start_date = "5/1/17"
    apartment.lease_end_date = "4/29/18"

    expect(apartment.rent).to eq(1000)
    expect(apartment.lease_start_date).to eq("5/1/17")
    expect(apartment.lease_end_date).to eq("4/29/18")

   end
 end

 describe "#add_roommate" do
   apartment = Apartment.new("5 Apple Road", "Boston", "Massachusetts", "02110")
   it "adds a roommate" do

     apartment.add_roommate("Jake","Fruci")
     expect(apartment.occupants.size).to eq(1)
   end
 end

 describe "#remove_roommate"
end
