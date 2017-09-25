require 'spec_helper'

describe Box do
  describe ".new" do
    box = Box.new("Jake", "Fruci")
    it "creates a new Box object with the name of the #owner as a requirement" do

      expect(box.name).to eq("Jake Fruci")
    end
  end
end
