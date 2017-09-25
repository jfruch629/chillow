require 'spec_helper'

describe Dwelling do
  describe ".new" do
    dwelling = Dwelling.new("5 Apple Road", "Boston", "Massachusetts", "02110")
    it 'Creates a new Dwelling object with general location attributes, what is not set is automatically nil' do

      expect(dwelling.address).to eq("5 Apple Road")
      expect(dwelling.city_or_town).to eq("Boston")
      expect(dwelling.state).to eq("Massachusetts")
      expect(dwelling.zip_code).to eq("02110")
    end
   end
 end
