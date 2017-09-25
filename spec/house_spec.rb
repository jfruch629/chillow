require 'spec_helper'

describe House do
  describe ".new" do
    house = House.new("5 Apple Road", "Boston", "Massachusetts", "02110")
    it 'Creates a new House object with general location attributes, what is not set is automatically nil' do

      expect(house.address).to eq("5 Apple Road")
      expect(house.city_or_town).to eq("Boston")
      expect(house.state).to eq("Massachusetts")
      expect(house.zip_code).to eq("02110")
      expect(house.asking_price).to eq(nil)
    end
  end

  describe "#asking_price" do
    house = House.new("5 Apple Road", "Boston", "Massachusetts", "02110")
    it "After creating the House object, you may set an #asking_price" do

      house.asking_price = 535000
      expect(house.asking_price).to eq(535000)
    end
  end
 end
