require 'rspec'
require './lib/string_calculator'
describe "It should calculate sum of the number in a string" do

  context "Checks for positive numbers and other characters" do
    it "should return 0 if empty string is provided" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "should return 4 if 4 is provided" do
      expect(StringCalculator.add("4")).to eq(4)
    end

    it "should return 10 if (4,6) is provided" do
      expect(StringCalculator.add("4,6")).to eq(10)
    end

    it "should return sum for string with new line operator" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "should return sum for custom delimiter" do
      expect(StringCalculator.add("//:\n2:3:4")).to eq(9)
    end

  end

end