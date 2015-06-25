#Advanced developers: Uncomment the following understand more about the RSpec "focus" filter
#require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'string_calculator'

# The top of your testing block
# More examples of tests can be found here: https://github.com/rspec/rspec-expectations
RSpec.describe StringCalculator, "#add" do

  context "null value" do
    it "returns 0 for empty string" do
      expect(StringCalculator.add("")).to eql(0)
    end
  end

  context "single value" do
    it "returns 0 for empty string" do
      expect(StringCalculator.add("0")).to eql(0)
    end
    it "returns 5 for empty string" do
      expect(StringCalculator.add("5")).to eql(5)
    end
  end

  context "two values" do
    it "returns 3 for string '1,2'" do
      expect(StringCalculator.add("1,2")).to eql(3)
    end
  end

  context "handle various delimiters" do
    it "returns 6 for string '1\n2,3'" do
      expect(StringCalculator.add("1\n2,3")).to eql(6)
    end

    it "returns 7 for string '//;\n2;5'" do
      expect(StringCalculator.add("//;\n2;5")).to eql(7)
    end
  end

  context "negative numbers" do
    it "throws a RuntimeError when negative numbers exists " do
      expect {StringCalculator.add("-1")}.to raise_error(RuntimeError)
    end
    it "RuntimeError message contains negative numbers if more than one exists " do
      expect {StringCalculator.add("-1")}.to raise_error(RuntimeError)
    end
  end


  # more tests go here
end
