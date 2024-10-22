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

    it 'returns the sum of an multiple comma separated numbers' do
      expect(Calculator.add("1,2,3,4,5")).to eq(15)
    end

  end
end