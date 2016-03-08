require "spec_helper"
require "empty/or_if_empty"

describe Empty::OrIfEmpty do
  describe "Array" do
    before { Array.include(Empty::OrIfEmpty) }

    it "should return self if contains items" do
      expected = [1, 2, 3]
      expect(expected.or_if_empty {}).to eq(expected)
    end

    it "should return block if empty" do
      empty = []
      expected = Object.new

      expect(empty.or_if_empty { expected }).to eq(expected)
    end
  end
end
