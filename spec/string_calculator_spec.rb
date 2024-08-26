require 'rspec'
require './lib/string_calculator'
describe "It should calculate sum of the number in a string" do

  context "Checks for positive numbers and other characters" do
    it "should return 0 if empty sting is provided" do
      expect(StringCalculator.add("")).to eq(0)
    end
    
  end

end