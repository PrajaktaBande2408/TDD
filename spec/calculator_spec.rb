require './calculator'

RSpec.describe Calculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(Calculator.add("")).to eq(0)
    end

    it 'returns the sum of two numbers' do
      expect(Calculator.add("1,2")).to eq(3)
    end

    it 'returns the same itself if a single number is provided in string' do
      expect(Calculator.add("1")).to eq(1)
    end

    it 'returns the sum of an multiple comma separated numbers in sorted order' do
      expect(Calculator.add("1,2,3,4,5,6")).to eq(21)
    end

    it 'returns the sum of an multiple comma separated numbers in un-sorted order' do
      expect(Calculator.add("8,9,1,2,3,4,5,6")).to eq(38)
    end

    it 'to allow newlines between numbers' do
      expect(Calculator.add("1\n2,3")).to eq(6)
    end

    it 'supports different delimiters' do
      expect(Calculator.add("//;\n1;2")).to eq(3)
    end

     it 'raises an exception if negative numbers are present' do
      expect { Calculator.add("1,-2,-3,4") }.to raise_error("Negative numbers not allowed [-2, -3]")
    end

  end
end